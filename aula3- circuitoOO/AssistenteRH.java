class AssistenteRH extends Funcionario(){
    private int crp;

    public AssistentedeRH(String nome, String cpf, String dt_nasc, int num_dependente, double salario, int crp){
        super(nome, cpf, dt_nasc, num_dependente, salario);
        this.crp = crp;
    }
    
    public int getCrp(){
        return crp;
    }
    public void setCrp(int crp){
        this.crp = crp;
    }

    @Override
    public double getBonusAnual() {
        return getSalario() * 0.15;
    }

     //saudacao
    @Override
    public String saudacao(){
        return "Bem vinde Programador, " + getNome();
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