public abstract class Funcionario{
    private String nome;
    private String cpf;
    private String dt_nasc;
    private int num_dependente;
    private double salario;

    //construtor
    public Funcionario(String nome, String cpf, String dt_nasc, int num_dependente, double salario) {
        this.nome = nome;
        this.cpf = cpf;
        this.dt_nasc = dt_nasc;
        this.num_dependente = num_dependente;
        this.salario = salario;
    }

    //métodoBonus
    public abstract double getBonusAnual();

    //get e set nome
    public String getNome(){
        return nome;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    // get e set cp
    public String getCpf(){
        return cpf;
    }
    public void setCpf(String cpf){
        this.cpf = cpf;
    }
    //get e set dtnasc
    public String getDtNasc(){
        return dt_nasc;
    }
    public void setDtNasc(String dt_nasc){
        this.dt_nasc= dt_nasc;
    }

    //get e set num depende
    public int getNumDependente(){
        return num_dependente;
    }
    public void setNum_dependente(int num_dependente){
        this.num_dependente = num_dependente;
    }
    //get e set salario

    public double getSalario(){
        return salario;
    }
    public void setSalario(double salario){
        this.salario = salario;
    }

    public abstract String saudacao();
}
