#INCLUDE 'PROTHEUS.CH'

User Function L02Ex10()
    Local nMenor := 0
    Local nMaior := 0

    SolicitaValor(@nMenor, @nMaior)

    FwAlertInfo("O maior número digitado foi: " + CVALTOCHAR(nMaior) + CRLF +;
                "O menor número digitado foi: " + CVALTOCHAR(nMenor), "Maior e menor número")
Return 

Static Function SolicitaValor(nMenor, nMaior)
    Local nI
    Local nTempNum := 0
    Local lPrimeiraVez := .T.

    for nI := 1 to 5
        nTempNum := val(FwInputBox("Insira um valor: ", ""))
        if lPrimeiraVez
            nMenor := nTempNum
            nMaior := nTempNum
            lPrimeiraVez := .F.
        else
            if nTempNum > nMaior
                nMaior := nTempNum
            elseif nTempNum < nMenor
                nMenor := nTempNum
            ENDIF
        endif
    next
Return
