public class RelatorioGastos {
    private double totalSalario;
    private double totalBonus;

    public double getTotalSalario(){
        return totalSalario;
    }

    public double getTotalBonus(){
        return totalBonus;
    }

    public void adiciona(Funcionario funcionario){
        double bonus = funcionario.getBonusAnual();
        totalBonus+=bonus;
        double salario = funcionario.getSalario();
        totalSalario+=salario;
    }

    
}
