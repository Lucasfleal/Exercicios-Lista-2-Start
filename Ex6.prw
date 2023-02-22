#INCLUDE 'PROTHEUS.CH'

user function L02Ex06()
    Local aNumeros := {}
    Local cMsg := ""
    local nTempNum := 0, ni 
    
    for nI := 1 to 4
        nTempNum := val(FwInputBox("Digite o " + CVALTOCHAR( nI ) + "º número: ", ""))
        AADD(aNumeros, nTempNum)

        if nTempNum % 2 == 0 .AND. nTempNum % 3 == 0 
            cMsg += "O número " + CValToChar(nTempNum) + " é divisivel por 2 e 3" + CRLF
        endif
    next

    FwAlertInfo(cMsg, "Numeros divisiveis")
return
