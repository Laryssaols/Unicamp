import java.util.ArrayList;
import java.util.List;

public class TestarRelatorios {
    public static void main(String[] args) {
        
        List<Funcionario> listaFuncionarios = new ArrayList<Funcionario>();

        Funcionario funcionario = new Funcionario("Maria", "12345678912", "12/04/2000", 0, 3000);
        listaFuncionarios.add(funcionario);

        GerenteTI gerenteTI = new GerenteTI("Marta", "12345678412", "12/04/2001", 0, 12000, 2, "23","senha123");
        listaFuncionarios.add(gerenteTI);
        
        Programador programador = new Programador("Julia", "12345678912","15/07/2001", 2, 7000,1222);
        listaFuncionarios.add(programador);
        
        CientistadeDados cientistadeDados = new CientistadeDados("Leo", "12345678777","23/09/2000",4, 9000, 234);
        listaFuncionarios.add(cientistadeDados);

        for(Funcionario f: listaFuncionarios){
            System.out.print("Bem vinde, ");
            
            if (f instanceof GerenteTI){
                System.err.print("Gerente de TI ");
            }
            if (f instanceof Programador){
                System.out.print("Programador ");
            }
            if(f instanceof CientistadeDados){
                System.out.print("Cientista de Dados ");
            }
            System.out.print(f.getNome());
            System.out.println("\n");
        }
    }
        /*
        
        RelatorioGastos relatorioGastos = new RelatorioGastos();
        relatorioGastos.adiciona(funcionario);
        relatorioGastos.adiciona(gerenteTI);
        relatorioGastos.adiciona(programador);
        relatorioGastos.adiciona(cientistadeDados);

        System.err.println("O total de bonus é:" + relatorioGastos.getTotalBonus()+ " \nO total de Salario é: " + relatorioGastos.getTotalSalario());
        CientistadeDados c =new CientistadeDados("Leo", "12345678777","23/09/2000",4, 900, 234);
        Funcionario f = c;
        f.setSalario(1000.0);
        System.out.println("O bonus é de quem? se for do c é 600 e do f 100 "+f.getBonusAnual()); //pega o bonus do cientista  */
}
