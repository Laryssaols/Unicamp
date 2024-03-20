public class Cientista extends Funcionario{
    private int crcd;

    
    public Cientista
    
    public Cientista(String nome, String cpf, String dt_nasc, int num_dependente, double salario, int crcd){
        super(nome, cpf, dt_nasc, num_dependente, salario);
        this.crcd = crcd; 
    }

    public double getBonusAnual(){
        return super.getBonusAnual() + 500.0;
    }
    public int getCrcd(){
        return crcd;
    }
    public void setCrcd(int crcd){
        this.crcd = crcd;
    }
}