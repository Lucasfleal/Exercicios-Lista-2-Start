#INCLUDE 'PROTHEUS.CH'

User Function L02Ex01()
    Local nNum1 := 0
    Local nNum2 := 0

    nNum1 := LerNum(1)
    nNum2 := LerNum(2)

    FwAlertInfo("Soma: " + CVALTOCHAR(nNum1 + nNum2) + CRLF +;
                "Diferença: " + CVALTOCHAR(nNum1 - nNum2) + CRLF +;
                "Produto: " + CVALTOCHAR(nNum1 * nNum2) + CRLF +;
                "Quociente: " + CVALTOCHAR(nNum1 / nNum2), "Operações com dois números")
Return 

Static Function LerNum(nPos)
    Local nNum := 0
    Local lPositivo := .F.

    while !lPositivo
        nNum := val(FwInputBox("Digite o " + CVALTOCHAR(nPos) + "º número: ", ""))
        if nNum >= 0 
            MSGINFO( "Dados inseridos com sucesso", "Sucesso!" )
            lPositivo := .T.
        else
            MSGALERT( "Insira um numero positivo", "Erro!" )
        endif
    end
Return nNum
