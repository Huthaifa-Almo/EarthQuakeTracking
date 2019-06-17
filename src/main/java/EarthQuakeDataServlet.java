import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;

@WebServlet("/earthquake")
public class EarthQuakeDataServlet extends HttpServlet {
    List<String> quakes;

    String getQuakeJson(String csvLine) {
        String[] w = csvLine.split(",");
        return String.format("{'date': '%s', 'time': '%s', 'lat': %s, 'long': %s, 'mag': %s}",
                w[0], w[1], w[2], w[3], w[8]).replace('\'', '"');
    }

    @Override
    public void init() {
        quakes = new ArrayList<>();
        try {
            String pathcsv = this.getServletContext().getRealPath(
                "assets/files/earthquake.csv"
            );
            Scanner scanner = new Scanner(Paths.get(pathcsv));
            while (scanner.hasNextLine()) {
                quakes.add(getQuakeJson(scanner.nextLine()));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String strStart = req.getParameter("start"),
                strEnd = req.getParameter("end");
        double fltStart = strStart == null ? 0 : Double.parseDouble(strStart),
                fltEnd = strEnd == null ? 1 : Double.parseDouble(strEnd);
        int idxStart = (int) (fltStart * quakes.size()),
                idxEnd = (int) (fltEnd * quakes.size());

        PrintWriter out = resp.getWriter();
        out.write("{\"quakes\": [" +
                String.join(", ", quakes.subList(idxStart, idxEnd)) + "]}"
        );
    }
}