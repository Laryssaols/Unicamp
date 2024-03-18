public class Cientista extends Funcionario{
    private int crcd;
    
    public double bonusAnualCientista(){
        return (10 * this.salario)/100 + 500;
    }
    public int getCrcd(){
        return crcd;
    }
    public void setCrcd(int crcd){
        this.crcd = crcd;
    }

}