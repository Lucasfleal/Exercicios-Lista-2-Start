#INCLUDE 'PROTHEUS.CH'

user function L02Ex15()
	local nQtd := 0, ni
	local aFibonacci := {0,1}
    Local cMsg := ""
    Local nNum := 0

	nQtd := val(FwInputBox("Digite a quantidade de números desejada:", ""))
    
	for ni := 3 to nQtd
    nNum := aFibonacci[ni-1] + aFibonacci[ni-2]
    AADD( aFibonacci, nNum )
	next

	cMsg += "Os " + CVALTOCHAR(nQtd) + " primeiros números da série de Fibonacci são:" + CRLF
	for ni := 1 to nQtd
		cMsg += CVALTOCHAR(aFibonacci[ni]) + CRLF
	next
    FwAlertInfo(cMsg, "Fibonacci")
return
