public class TestaAutenticacao{
    public static void main(String[] args) {
        GerenteTI gerenteTI = new GerenteTI;
        gerenteTI.setNome("Maria");
        gerenteTI.setCpf("555.666.777-88");
        gerenteTI.setDtNasc("20/04/1970");
        gerenteTI.setNum_dependente(2);
        gerenteTI.setSalario(10000.00);
        gerenteTI.set_numFunc(10);
        gerenteTI.setRamal("123");
        gerenteTI.senha("senha123");

        if(programador.verificarSenha("senha123")) {
            System.out.println("Acesso Liberado");
        } else {
            System.out.println("Acesso Não Liberado: Senha incorreta");
        }

        System.out.println("Bônus Anual de " + gerenteTI.getNome() + ": " + gerenteTI.getBonusAnual());
        System.out.println("Número de Funcionários sob Gerenciamento: " + gerenteTI.get_numFunc());
        System.out.println("Ramal do Gerente de TI: " + gerenteTI.getRamal());
    }
}
