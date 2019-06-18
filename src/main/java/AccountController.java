public class AccountController {

    public boolean login(String Email, String Password) {
        return Email.equalsIgnoreCase("huthaifa.cis@gmail.com") && Password.equalsIgnoreCase("123456");
    }

}
