#INCLUDE 'PROTHEUS.CH'

User Function L02Ex09()
    Local aDiasMes := {{1,"Janeiro",31}, {2,"Fevereiro",28}, {3,"Março",31}, {4,"Abril",30},{5,"Maio",31},{6,"Junho",30};
                        ,{7,"Julho",31},{8,"Agosto",31},{9,"Setembro",30},{10,"Outubro",31},{11,"Novembro",30},{12,"Dezembro",31}}
    Local nTempBusc := 0

    nTempBusc := val(FwInputBox("Digite um mês para saber quantos dias ele possue: ", ""))

    FwAlertInfo("O mês de " + aDiasMes[nTempBusc,2] + " possue " + CValToChar(aDiasMes[nTempBusc,3]) + " dias")
Return 
