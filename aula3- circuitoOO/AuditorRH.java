public class AuditorRH {
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    //metodo autentica senha
    public boolean autentica(String senha){
        if (this.senha.equals(senha)){
            return true;
        } else{
            return false;
        }
    }
    @Override
     //metodo autentica senha e cpf
    public boolean autentica(String senha, String cpf){
        if(autentica(senha) && cpf.length() == 11)
            return true;
        else
            return false;
    }
}
