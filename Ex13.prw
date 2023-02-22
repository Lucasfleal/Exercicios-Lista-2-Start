#INCLUDE 'PROTHEUS.CH'

User Function L02Ex13()
    Local cMsg := ""
    Local nNum := 0, nMax := 0, nCalc

    nNum := val(FwInputBox("Digite o valor que deseja ver os multiplos: ", ""))
    nCalc := nNum
    nMax := val(FwInputBox("Digite o limite: ", ""))

    while nCalc <= nMax
        cMsg += CValToChar(nCalc) + " "
        nCalc += nNum
    end

    FwAlertInfo(cMsg, "Números Multiplos de " + CValToChar(nNum) )
Return 
