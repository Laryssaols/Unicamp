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

    @overboard 
    public boolean autentica(String senha, String cpf){
        if(this.senha.equals(senha) && cpf.length() == 11){
            return true;
        }
        else{
            return false; 
        }
    }
s
    @Override
    public double getBonusAnual(){
        return super.getSalario() * 0.1 * get_numFunc();
    }

    public int getSenha(){
        return senha;
    }
    public void setSenha(int Senha){
        this.senha = senha;
    }

    public boolean autentica(String senha){
        if (this.senha.equals(senha)){
            return true;
        } else{
            return false;
        }
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
}
