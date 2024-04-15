public class CientistadeDados extends Funcionario{
    private int crcd;

    public CientistadeDados(String nome, String cpf, String dt_nasc, int num_dependente, double salario, int crcd){
        super(nome, cpf, dt_nasc, num_dependente, salario);
        this.crcd = crcd;
    }
    //saudacao
    @Override
    public String saudacao(){
        return "Bem vinde Cientista de Dados, " + getNome();
    }
    
    public double getBonusAnual(){
        return getBonusAnual() + 500.0; //super busca na classe mãe(sobe um nível na hierarquia)
    }
    public int getCrcd(){
        return crcd;
    }
    public void setCrcd(int crcd){
        this.crcd = crcd;
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