import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Login")
public class LogInServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        HttpSession session = req.getSession();
        if (action == null) {
            Accounts acc = checkCookeis(req);
            if (acc == null) {
                req.getRequestDispatcher("Login.jsp").forward(req, resp);
            } else {
                AccountController AccCtl = new AccountController();
                if (AccCtl.login(acc.getEmail(), acc.getPass())) {
                    session.setAttribute("email", acc.getEmail());
                    req.getRequestDispatcher("index.jsp").forward(req, resp);
                } else {
                    PrintWriter out = resp.getWriter();
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Email or password incorrect');");
                    out.println("location='Login.jsp';");
                    out.println("</script>");
                }
            }
        } else {
            if (action.equalsIgnoreCase("logout")) {
                session.removeAttribute("email");
                session.removeAttribute("pass");
                Cookie[] cookies = req.getCookies();
                for (Cookie ck : cookies) {
                    if (ck.getName().equalsIgnoreCase("email")) {
                        ck.setMaxAge(0);
                        resp.addCookie(ck);
                    }
                    if (ck.getName().equalsIgnoreCase("pass")) {
                        ck.setMaxAge(0);
                        resp.addCookie(ck);
                    }
                }
                req.getRequestDispatcher("Login.jsp").forward(req, resp);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        AccountController accCtl = new AccountController();
        String email = req.getParameter("email").trim();
        String pass = req.getParameter("pass").trim();
        boolean remember = req.getParameter("remember") != null;
        System.out.println(remember);
        if (accCtl.login(email, pass)) {
            session.setAttribute("email", email);
            session.setAttribute("pass", pass);
            if (remember) {
                Cookie ckemail = new Cookie("email", email);
                ckemail.setMaxAge(3600);
                Cookie ckpass = new Cookie("pass", pass);
                ckpass.setMaxAge(3600);
                resp.addCookie(ckpass);
                resp.addCookie(ckpass);
            }
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            PrintWriter out = resp.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Email or password incorrect');");
            out.println("location='Login.jsp';");
            out.println("</script>");
        }
    }


    private Accounts checkCookeis(HttpServletRequest req) {
        Cookie[] cookes = req.getCookies();
        Accounts acc = null;
        if (cookes == null) {
            return null;
        } else {
            String email = "", pass = "";
            for (Cookie ck : cookes) {
                if (ck.getName().equalsIgnoreCase("email"))
                    email = ck.getValue();
                if (ck.getName().equalsIgnoreCase("pass"))
                    pass = ck.getValue();
            }
            if (!email.isEmpty() && !pass.isEmpty()) {
                acc = new Accounts(email, pass);
            }
            return acc;
        }
    }

}
