public class Accounts {
    private String email;
    private String pass;

    public Accounts(String email,String pass) {
        this.email = email;
        this.pass = pass;
    }
    public Accounts() {
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }



    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
