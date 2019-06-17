$(function () {
    'use strict';

    let globalInfo;
    let globalStopLoading = false;

    // init call
    ajaxGetQuakes();

    // initialize jQuery range slider
    const sliderMax = 1000000;
    $("#slider-range").slider({
        range: true,
        min: 0,
        max: sliderMax,
        values: [0, sliderMax],
        change: onSliderChange
    });

    // react to slider event
    function onSliderChange(event, ui) {
        const start = ui.values[0] / sliderMax;
        const end = ui.values[1] / sliderMax;
        ajaxGetQuakes(start, end);
    }

    // AJAX call to get quake data
    function ajaxGetQuakes(start = 0, end = 1) {
        globalStopLoading = true;
        $('#text').text('Now loading...');
        $.get('/cs472Project_war_exploded/earthquake', { start: start, end: end }).done(drawQuakes);
    }

    // compute and return object of CSS properties
    function getCssObj(x, y, size, opacity = 1, z = 100) {
        return {
            width: size + '%',
            height: size * 2 + '%',
            left: x * 100 - size / 2 + '%',
            top: y * 100 - size + '%',
            opacity: opacity,
            'z-index': z,
        };
    }

    // draw earthquakes as dots on the map
    function drawQuakes(data) {
        const quakes = JSON.parse(data).quakes;

        // clear canvas
        $('div.dot').remove();

        // update text
        if (quakes.length === 0) {
            $('#text').text('Displaying... Well, the world map...');
            return;
        }
        globalInfo = `Displaying ${quakes.length} earthquakes ` +
            `from ${quakes[0].date} ${quakes[0].time} ` +
            `to ${quakes[quakes.length - 1].date} ${quakes[quakes.length - 1].time}`
        $('#text').text(globalInfo);

        // compute base opacity based on ammount of data points
        const opacityBase = Math.max(0.1, quakes.length * -0.9 / 10000 + 1);

        // draw new dots by deferred batch loading
        globalStopLoading = false;
        (function deferredLoad(quakes) {
            if (globalStopLoading || quakes.length === 0) {
                return;
            }
            const loadBatch = 100;
            $('#world').append(quakes.slice(0, loadBatch).map(getQuakeDot));
            quakes = quakes.slice(loadBatch);
            setTimeout(() => deferredLoad(quakes), 0);
        })(quakes);

        // construct a quake dot
        function getQuakeDot(quake) {
            const x = quake.long / 360 + 0.5;
            const y = quake.lat / -180 + 0.5;
            const normMag = (quake.mag - 5) / 3.5;

            // compute customized features
            const size = normMag * 6;
            const hue = Math.max(0, normMag * -150 + 150);
            const opacity = opacityBase * normMag;
            const color = `hsl(${hue}, 100%, 50%)`

            // append dots to map
            return $('<div>').addClass('dot')
                .data('date', quake.date).data('time', quake.time)
                .data('lat', quake.lat).data('long', quake.long)
                .data('mag', quake.mag)
                .data('size', size).data('x', x).data('y', y)
                .data('opacity', opacity)
                .css(getCssObj(x, y, size, opacity, 'auto'))
                .css('background-color', color)
                .mouseenter(onQuakeEnter)
                .mouseleave(onQuakeLeave);
        }
    }

    function onQuakeEnter() {
        let div = $(this);
        div.css(getCssObj(div.data('x'), div.data('y'), div.data('size') * 1.5));
        // show data point info
        const info = `${div.data('date')} ${div.data('time')}, ` +
            `Lat: ${div.data('lat')}, Long: ${div.data('long')}, Mag: ${div.data('mag')}`;
        $('#text').text(info);
    }

    function onQuakeLeave() {
        let div = $(this);
        div.css(getCssObj(div.data('x'), div.data('y'),
            div.data('size'), div.data('opacity'), 'auto'));
        // restore global info
        $('#text').text(globalInfo);
    }
});