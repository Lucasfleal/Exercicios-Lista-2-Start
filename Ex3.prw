#INCLUDE 'PROTHEUS.CH'

User Function L02Ex03()
    Local nVelMedia := 0
    Local nTempo := 0
    Local nDist := 0
    Local nConsumo := 0

    SolicitaValor(@nVelMedia, @nTempo, @nConsumo)

    nDist := nTempo * nVelMedia

    FwAlertInfo("Velocidade M�dia: " + CValToChar(nVelMedia) + " Km/h" + CRLF +;
                "Tempo Gasto: " + CValToChar(nTempo) + " Horas" + CRLF +;
                "Dist�ncia percorrida: " + CValToChar(nDist) + " Quilometros" + CRLF +;
                "Quantidade de combust�vel utilizado : " + Str(nDist / nConsumo, , 2) + " Litros") 
Return 

Static Function SolicitaValor(nVelMedia, nTempo, nConsumo)
    nVelMedia := val(FwInputBox("Insira a velocidade m�dia (Km/h): ", ""))
    nTempo := val(FwInputBox("Insira o tempo gasto (Horas): ", ""))
    nConsumo := val(FwInputBox("Insira o gasto do veiculo: ", ""))
Return
