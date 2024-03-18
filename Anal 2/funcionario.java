import java.util.ArrayList;
import java.util.Scanner;

class funcionario{
    private String nome;
    private String cpf; 
    private String dt_nasc;
    private int num_dependente; 
    private double salario; 

    public double getBonusAnul(){
        return (10 * this.salario)/100;
    }
    //get set nome
    public String getNome(){
        return nome;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    // get set cp
    public String getCpf(){
        return cpf;
    }
    public void setCpf(String cpf){
        this.cpf = cpf;
    }
    //get set dtnasc
    public String getDtNasc(){
        return dt_nasc;
    }
    public void setDtNasc(String dt_nasc){
        this.dt_nasc= dt_nasc;
    }

    //get set num depende
    public String getNum_dependente(){
        return num_dependente;
    }
    public void setNum_dependente(String num_dependente){
        this.num_dependente = num_dependente;
    }
    //get set salario

    public String getSalario(){
        return salario;
    }
    public void setNome(Double salario){
        this.salario = salario;
    }
}

public class Programador extends Funcionario{
    private int crp;
    
    public int getCrp(){
        return crp;
    }
    public void setCrp(int crp){
        this.crp = crp;
    }
}

public class Cientista extends Funcionario{
    private int crcd;
    
    public int getCrcd(){
        return crcd;
    }
    public void setCrcd(int crcd){
        this.crcd = crcd;
    }
}

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

public class TestarFuncionario {

    public static void main(String[] args) {

        Funcionario funcionario = new Funcionario();
        funcionario.setNome("João");
        funcionario.setCpf("123.456.789-10");
        funcionario.setDtNasc("01/01/1990");
        funcionario.setNum_dependente(2);
        funcionario.setSalario(5000.00);

        System.out.println("Bônus Anual de " + funcionario.getNome() + ": " + funcionario.getBonusAnual());
    }
}