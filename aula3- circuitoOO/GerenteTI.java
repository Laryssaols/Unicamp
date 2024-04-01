public class GerenteTI extends Funcionario{
    private int num_Func;
    private String ramal;
    private String senha;

    public GerenteTI(String nome, String cpf, String dt_nasc, int num_dependente, double salario, int num_Func, String ramal, String senha){
        super(nome, cpf, dt_nasc, num_dependente, salario);
        this.num_Func = num_Func;
        this.ramal = ramal;
        this.senha = senha;
    }
    
   
    @Override
    public double getBonusAnual(){
        return (getSalario() * 0.1) * this.get_numFunc(); //this busca na própria classe
    }
    
    public int get_numFunc(){
        return num_Func;
    }
    public void set_numFunc(int num_Func){
        this.num_Func= num_Func;
    }

    public String getRamal(){
        return ramal;
    }

    public void setRamal(String ramal){
        this.ramal = ramal;
    }

     //get e set senha
    public String getSenha(){
        return senha;
    }

    public void setSenha(String senha){
        this.senha = senha;
    }
    
    //metodo autentica senha
    public boolean autentica(String senha){
        if (this.senha.equals(senha)){
            return true;
        } else{
            return false;
        }
    }
     //metodo autentica senha e cpf
    public boolean autentica(String senha, String cpf){
        if(autentica(senha) && cpf.length() == 11)
            return true;
        else
            return false;
    }

    //saudacao
    @Override
    public String saudacao(){
        return "Bem vinde Gerente de TI, " + getNome();
    }
}
