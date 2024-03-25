public class Programador extends Funcionario{
    private int crp;

    public Programador(String nome, String cpf, String dt_nasc, int num_dependente, double salario, int crp){
        super(nome, cpf, dt_nasc, num_dependente, salario);
        this.crp = crp;
    }
    
    public int getCrp(){
        return crp;
    }
    public void setCrp(int crp){
        this.crp = crp;
    }
}