public class Dev extends Funcionario {
    public Dev(String nome, String cpf, String dt_nasc, int num_dependente, double salario) {
        super(nome, cpf, dt_nasc, num_dependente, salario);
        this.crpw = crpw;
    }

    private int crpw;
    
    public int getCrpw() {
        return crpw;
    }

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


