public class RelatorioAutoAvaliacao {
    public static void main(String[] args) {
        AssistenteRH a = new AssistenteRH("Julia", "12345678912","15/07/2001", 2, 7000,1222 );
        System.out.println("Autenticou: +" + a.autentica("1234"));

        GerenteTI gerenteTI = new GerenteTI("Marta", "12345678412", "12/04/2001", 0, 12000, 2, "23","senha123");
        System.out.println("Autenticou: +" + a.autentica("senha123"));

        AuditorRH auditorRH = new AuditorRH("Maria", "12345678412", "12/04/2000", 0, 12000, 1);

        Autenticavel aut = new AuditorRH();
        aut.autentica("teste");
    }
}
