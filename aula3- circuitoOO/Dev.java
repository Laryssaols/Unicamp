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

    @Override
    //metodo autentica senha
    public boolean autentica(String senha){
        if (this.senha.equals(senha)){
            return true;
        } else{
            return false;
        }
    }
    @Override
     //metodo autentica senha e cpf
    public boolean autentica(String senha, String cpf){
        if(autentica(senha) && cpf.length() == 11)
            return true;
        else
            return false;
    }
}


