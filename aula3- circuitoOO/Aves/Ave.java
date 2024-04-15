package Aves;

public abstract class Ave {
    private String nome;
    private double peso;

    public Aves(String nome, double peso){
        this.nome = nome;
        this.peso = peso;
    }

    public void piar(){
        System.err.println("Piando");
    }

    public void andar(){
        System.err.println("Andando");
    }

    //get e set nome

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    //get e set peso

    public double peso(){
        return peso;
    }

    public void setPeso(double peso){
        this.peso = peso;
    }
}
