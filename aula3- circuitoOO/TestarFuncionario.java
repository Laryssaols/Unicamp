public class TestarFuncionario {

    public static void main(String[] args) {

        Programador programador = new Programador();
        programador.setNome("Ana");
        programador.setCpf("987.654.321-10");
        programador.setDtNasc("10/02/1985");
        programador.setNum_dependente(1);
        programador.setSalario(6000.00);
        programador.setCrp(12345);

        System.out.println("Programador");
        System.out.println("Bônus Anual de " + programador.getNome() + ": " + programador.getBonusAnual());
        System.out.println("CRP do Programador: " + programador.getCrp());
        
        Cientista cientista = new Cientista();
        cientista.setNome("Mário");
        cientista.setCpf("111.222.333-44");
        cientista.setDtNasc("05/03/1978");
        cientista.setNum_dependente(3);
        cientista.setSalario(8000.00);
        cientista.setCrcd(54321);

        System.out.println("Cientista");
        System.out.println("Bônus Anual de " + cientista.getNome() + ": " + cientista.getBonusAnual());
        System.out.println("CRCD do Cientista: " + cientista.getCrcd());

        GerenteTI gerenteTI = new GerenteTI();
        gerenteTI.setNome("Maria");
        gerenteTI.setCpf("555.666.777-88");
        gerenteTI.setDtNasc("20/04/1970");
        gerenteTI.setNum_dependente(2);
        gerenteTI.setSalario(10000.00);
        gerenteTI.set_numFunc(10);
        gerenteTI.setRamal("123");

        System.out.println("GerenteTI");
        System.out.println("Bônus Anual de " + gerenteTI.getNome() + ": " + gerenteTI.getBonusAnual());
        System.out.println("Número de Funcionários sob Gerenciamento: " + gerenteTI.get_numFunc());
        System.out.println("Ramal do Gerente de TI: " + gerenteTI.getRamal());
    }
        
    }
}