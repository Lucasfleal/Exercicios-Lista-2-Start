#INCLUDE 'PROTHEUS.CH'

User Function L02Ex05()
    Local nCotDolar := 0
    Local nQtdDolar := 0

    SolicitaValor(@nCotDolar, @nQtdDolar)

    FwAlertInfo("Resultado da convers�o: " + CVALTOCHAR(nQtdDolar * nCotDolar) + " Reais")
Return 

Static Function SolicitaValor(nA, nB)
    nA := val(FwInputBox("Insira a cota��o atual do Dolar: ", ""))
    nB := val(FwInputBox("Insira a quantidade de Dolar disponivel: ", ""))
Return
