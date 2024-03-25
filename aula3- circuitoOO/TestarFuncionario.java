public class TestarFuncionario {

    public static void main(String[] args) {

        Programador programador = new Programador("Ana", "987.654.321-10", "10/02/1985", 1, 6000.00, 12345);

        System.out.println("Programador");
        System.out.println("Bônus Anual de " + programador.getNome() + ": " + programador.getBonusAnual());
        System.out.println("CRP do Programador: " + programador.getCrp());
        
        CientistadeDados cientista = new CientistadeDados("Mário", "111.222.333-44", "05/03/1978", 3, 8000.00, 54321);

        System.out.println("Cientista");
        System.out.println("Bônus Anual de " + cientista.getNome() + ": " + cientista.getBonusAnual());
        System.out.println("CRCD do Cientista: " + cientista.getCrcd());

    }
}
