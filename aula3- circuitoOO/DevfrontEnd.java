public class DevfrontEnd extends Funcionario {
    private int crpw;

    public DevfrontEnd() {
    }

    public int getCrpw() {
        return crpw;     }

    public void setCrpw(int crpw) {
        this.crpw = crpw;
    }

    @Override
    public double getBonusAnual() {
        return getSalario() * 0.1;
    }

    @Override
    public String saudacao() {
        return "Bem vinde Dev Front End, " + getNome();
    }
}


