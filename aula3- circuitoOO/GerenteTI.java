public class GerenteTI extends Funcionario{
    private int num_Func;
    private String ramal;
    
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
