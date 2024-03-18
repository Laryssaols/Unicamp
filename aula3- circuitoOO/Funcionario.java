import java.util.ArrayList;
import java.util.Scanner;

class Funcionario{
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
