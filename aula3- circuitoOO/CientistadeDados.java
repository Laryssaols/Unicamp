public class CientistadeDados extends Funcionario{
    private int crcd;

    public CientistadeDados(String nome, String cpf, String dt_nasc, int num_dependente, double salario, int crcd){
        super(nome, cpf, dt_nasc, num_dependente, salario);
        this.crcd = crcd;
    }
    @Override
    public double getBonusAnual(){
        return super.getBonusAnual() + 500.0; //super busca na classe mãe(sobe um nível na hierarquia)
    }
    public int getCrcd(){
        return crcd;
    }
    public void setCrcd(int crcd){
        this.crcd = crcd;
    }
}