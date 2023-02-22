#INCLUDE 'PROTHEUS.CH'

User Function L02Ex07()
    Local nHrIni := 0, nHrFim := 0, nTempJogo := 0

SolicitaValor(@nHrIni, "Inicio")
SolicitaValor(@nHrFim, "Fim")

CalculaTempo(nHrIni, nHrFim, @nTempJogo)

FwAlertInfo("O tempo de jogo foi de " + CVALTOCHAR( nTempJogo ) + " horas", "Duração do Jogo")
Return 

Static Function SolicitaValor(nA, cB)
    Local lHora := .F.

    nA := val(FwInputBox("Insira a hora do " + cB + " do jogo: ", ""))

    while !lHora
        if nA >= 0 .and. nA <= 23
            FwAlertInfo("","Inserido com Sucesso!")
            lHora := .T.
        else
            FwAlertError("Hora precisa ser colocada entre 0 e 23")
        endif
    end
Return

Static Function CalculaTempo(nHrIni, nHrFim, nTempJogo)
    if nHrIni < nHrFim
        nTempJogo := nHrFim - nHrIni
    elseif nHrIni > nHrFim
        nTempJogo := (23  - nHrIni) + nHrFim + 1
    else
        nTempJogo := 24
    endif
Return
