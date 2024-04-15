public Interface Autenticavel {
    public abstract boolean autentica();

    public boolean autentica(String senha);
    
    public boolean autentica(String senha, String cpf);
}
