#INCLUDE 'PROTHEUS.CH'

User Function L02Ex11()
    Local cValoresFor := ""
    Local cValoresWhile := ""

    GeraValorFor(@cValoresFor)
    GeraValorWhile(@cValoresWhile)

    FwAlertInfo(cValoresFor, "Numeros Gerados com For")
    FwAlertInfo(cValoresWhile, "Numeros Gerados com While")
Return 

Static Function GeraValorFor(cValoresFor)
    Local nI
    Local nTempNum := 0

    for nI := 1 to 50
        nTempNum := RANDOMIZE(10, 99)
        cValoresFor += CVALTOCHAR(nTempNum)
        if nI == 50
            cValoresFor += ". "
        else
            cValoresFor += ", "
        endif
    next
Return

Static Function GeraValorWhile(cValoresWhile)
    Local nCont := 1
    Local nTempNum := 0

    while nCont <= 50
        nTempNum := RANDOMIZE(10, 99)
        cValoresWhile += CVALTOCHAR(nTempNum)
        if nCont == 50
            cValoresWhile += ". "
        else
            cValoresWhile += ", "
        endif
        nCont ++
    end
Return
