import java.util.ArrayList;
import java.util.List;

public class TestarRelatorios {
    public static void main(String[] args) {
        
        List<Funcionario> listaFuncionarios = new ArrayList<Funcionario>();

        GerenteTI gerenteTI = new GerenteTI("Marta", "12345678412", "12/04/2001", 0, 12000, 2, "23","senha123");
        listaFuncionarios.add(gerenteTI);
        
        CientistadeDados cientistadeDados = new CientistadeDados("Leo", "12345678777","23/09/2000",4, 9000, 234);
        listaFuncionarios.add(cientistadeDados);

        for (Funcionario f: listaFuncionarios){
            System.out.println(f.saudacao());
        }
    }
        /*
    }
        RelatorioGastos relatorioGastos = new RelatorioGastos();
        relatorioGastos.adiciona(funcionario);
        relatorioGastos.adiciona(gerenteTI);
        relatorioGastos.adiciona(programador);
        relatorioGastos.ad iciona(cientistadeDados);

        System.err.println("O total de bonus é:" + relatorioGastos.getTotalBonus()+ " \nO total de Salario é: " + relatorioGastos.getTotalSalario());
        CientistadeDados c =new CientistadeDados("Leo", "12345678777","23/09/2000",4, 900, 234);
        Funcionario f = c;
        f.setSalario(1000.0);
        System.out.println("O bonus é de quem? se for do c é 600 e do f 100 "+f.getBonusAnual()); //pega o bonus do cientista  */
}
