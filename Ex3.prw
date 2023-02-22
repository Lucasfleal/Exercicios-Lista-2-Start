#INCLUDE 'PROTHEUS.CH'

User Function L02Ex03()
    Local nVelMedia := 0
    Local nTempo := 0
    Local nDist := 0
    Local nConsumo := 0

    SolicitaValor(@nVelMedia, @nTempo, @nConsumo)

    nDist := nTempo * nVelMedia

    FwAlertInfo("Velocidade Média: " + CValToChar(nVelMedia) + " Km/h" + CRLF +;
                "Tempo Gasto: " + CValToChar(nTempo) + " Horas" + CRLF +;
                "Distância percorrida: " + CValToChar(nDist) + " Quilometros" + CRLF +;
                "Quantidade de combustível utilizado : " + Str(nDist / nConsumo, , 2) + " Litros") 
Return 

Static Function SolicitaValor(nVelMedia, nTempo, nConsumo)
    nVelMedia := val(FwInputBox("Insira a velocidade média (Km/h): ", ""))
    nTempo := val(FwInputBox("Insira o tempo gasto (Horas): ", ""))
    nConsumo := val(FwInputBox("Insira o gasto do veiculo: ", ""))
Return
