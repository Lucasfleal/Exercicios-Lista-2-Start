#INCLUDE 'PROTHEUS.CH'

User Function L02Ex02()
    Local nVelMedia := 0
    Local nTempo := 0
    Local nDist := 0

    SolicitaValor(@nVelMedia, @nTempo)

    nDist := nTempo * nVelMedia

    FwAlertInfo("Velocidade M�dia: " + CValToChar(nVelMedia) + " Km/h" + CRLF +;
                "Tempo Gasto: " + CValToChar(nTempo) + " Horas" + CRLF +;
                "Dist�ncia percorrida: " + CValToChar(nDist) + " Quilometros" + CRLF +;
                "Quantidade de combust�vel utilizado : " + Str(nDist / 12, , 2) + " Litros") 
Return 

Static Function SolicitaValor(nVelMedia, nTempo)
    nVelMedia := val(FwInputBox("Insira a velocidade m�dia (Km/h): ", ""))
    nTempo := val(FwInputBox("Insira o tempo gasto (Horas): ", ""))
Return
