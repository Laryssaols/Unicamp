public class TestaAutenticacao{
    public static void main(String[] args) {
        GerenteTI gerente = new GerenteTI("João", "12345678900", "01/01/1990", 0, 5000.00, 2, "12", "123senha");
        gerente.setSenha("123senha"); // Definindo a senha
        if (gerente.autentica("123senha", "12345678900")){
            System.out.println("Acesso Liberado");
        } else {
            System.out.println("Acesso Não Liberado: Senha ou cpf incorretos");
        }

        System.out.println("Bônus Anual de " + gerente.getNome() + ": " + gerente.getBonusAnual());
    }
}
