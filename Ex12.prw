#INCLUDE 'PROTHEUS.CH'

User Function L02Ex12()
    Local cMsg := ""
    Local nNum := 3

    while nNum < 100
        cMsg += CValToChar(nNum) + " "
        nNum += 3
    end

    FwAlertInfo(cMsg, "Números Multiplos de 3")
Return 
