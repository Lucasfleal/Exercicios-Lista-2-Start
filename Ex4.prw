#INCLUDE 'PROTHEUS.CH'

User Function L02Ex04()
    Local nA := 0
    Local nB := 0
    Local nResult := 0

    SolicitaValor(@nA, @nB)

    nResult := (nA - nB) ** 2

    FwAlertInfo("Resultado: " + CVALTOCHAR(nResult))
Return

Static Function SolicitaValor(nA, nB)
    nA := val(FwInputBox("Insira o primeiro valor: ", ""))
    nB := val(FwInputBox("Insira o segundo valor: ", ""))
Return
