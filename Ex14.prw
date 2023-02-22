#INCLUDE 'PROTHEUS.CH'

user function L02Ex14()
	local nValor := 0 , nI := 0
	local nSomatoria := 0
    Local lPar := .F.

	nValor := val(FwInputBox("Digite a quantidade de números desejada:", ""))

	lPar := TelaOpcao()

	if lPar
		for nI := 2 to nValor * 2 step 2
			nSomatoria += nI
		next
		FwAlertInfo("A somatória dos " + CVALTOCHAR(nValor) + " primeiros números pares é: " + CVALTOCHAR(nSomatoria), "Resultado")
	else
		for nI := 1 to nValor * 2 step 2
			nSomatoria += nI
		next
		FwAlertInfo("A somatória dos " + CVALTOCHAR(nValor) + " primeiros números ímpares é: " + CVALTOCHAR(nSomatoria), "Resultado")
	endif
return

Static Function TelaOpcao()
    Local oGrpLog
    Local oBtnConf
    Private lPar := .F.
    Private oDlgPvt
    //Dimensões da janela
    Private nJanLarg := 200
    Private nJanAltu := 100
      
    //Criando a janela
    DEFINE MSDIALOG oDlgPvt TITLE "Par ou impar" FROM 000, 000  TO nJanAltu, nJanLarg COLORS 0, 16777215 PIXEL
        @ 003, 001     GROUP oGrpLog TO (nJanAltu/2)-1, (nJanLarg/2)-3         PROMPT "Selecione: "     OF oDlgPvt COLOR 0, 16777215 PIXEL
            //Botões
            @ 013, 006 BUTTON oBtnConf PROMPT "Par"             SIZE (nJanLarg/2)-12, 015 OF oDlgPvt ACTION (lPar := .T., oDlgPvt:End()) PIXEL
            @ 030, 006 BUTTON oBtnConf PROMPT "Impar"             SIZE (nJanLarg/2)-12, 015 OF oDlgPvt ACTION (oDlgPvt:End()) PIXEL
            oBtnConf:SetCss("QPushButton:pressed { background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #dadbde, stop: 1 #f6f7fa); }")
    ACTIVATE MSDIALOG oDlgPvt CENTERED
Return lPar
  
Static Function IsPar()
    lPar := .T.
    oDlgPvt:End()
Return

Static Function IsImpar()
    oDlgPvt:End()
Return
