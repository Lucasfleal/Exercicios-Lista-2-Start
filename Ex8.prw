#INCLUDE 'PROTHEUS.CH'

#DEFINE cUserName "LUCAS"
#DEFINE cSenha "123"

User Function L02Ex08()
    Local cTempUser := "", cTempSenha := ""
    Local lLogado := .F.

    while !lLogado
        cTempUser := UPPER(FwInputBox("Usu�rio: ", ""))
        cTempSenha := FwInputBox("Senha: ", "")

        VerificaLogin(cTempUser, cTempSenha, @lLogado)
    end
Return

Static Function VerificaLogin(cTempUser, cTempSenha,lLogado)
    if cTempUser == cUserName
            if cTempSenha == cSenha
                FwAlertSuccess("Acesso Liberado", "Logado com Sucesso!")
                lLogado := .T.
            else
                FwAlertError("Usu�rio ou senha inv�lido", "Erro de autentica��o")
            endif
        else
            FwAlertError("Usu�rio ou senha inv�lido", "Erro de autentica��o")
    endif  
Return
