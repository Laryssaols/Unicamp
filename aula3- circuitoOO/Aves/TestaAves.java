public class Main {
    public static void main(String[] args) {
        BeijaFlor beijaFlor = new BeijaFlor();
        beijaFlor.setNome("Beija-Flor");
        beijaFlor.setPeso(0.002); // peso em kg

        System.out.println("Nome: " + beijaFlor.getNome());
        System.out.println("Peso: " + beijaFlor.getPeso() + " kg");

        beijaFlor.voar();
        beijaFlor.voarParaTras();
        beijaFlor.piar();
        beijaFlor.andar();
        beijaFlor.canta();
    }
}
