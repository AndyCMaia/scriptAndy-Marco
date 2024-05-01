:: Inicializar o script e comecar a limpeza da tela para iniciar a tela em branco.
@echo off
:: O comando chcp 65001 permite que as coisas sejam escritas com pontuação no echo.
chcp 65001
cls
@Mode 120,80
::Tamanho da tela em caracteres.
title Fatec - Script de Exemplo - Andy & Marco.
:: Ancorar a tela, ou seja, retornar ao menu para chamá-lo após as opções.
:menu
cls
:: Arte ASCII para Logo.
echo. 
echo.
echo ########    ###    ######## ########  ######        ######  ########  ######## 
echo ##         ## ##      ##    ##       ##    ##      ##    ## ##     ## ##     ##
echo ##        ##   ##     ##    ##       ##            ##       ##     ## ##     ##
echo ######   ##     ##    ##    ######   ##             ######  ##     ## ######## 
echo ##       #########    ##    ##       ##                  ## ##     ## ##       
echo ##       ##     ##    ##    ##       ##    ##      ##    ## ##     ## ##       
echo ##       ##     ##    ##    ########  ######        ######  ########  ##            
echo.
echo.
:: Título de instruções internas do script.
echo ##      Criadores; Andy Cordeiro Maia - Marco Aurelio Zivieri      ##
echo ##              Logotipo feito no site (www.asciiart.eu).          ##
echo ##                Execute o script como Administrador!             ##
echo ##    Sem executar como Administrador, não atualiza programas!     ##
echo ##                       Menu de Opções                            ##
echo ##                       Data de Hoje:                             ##
date /t 
echo.
echo.
:: Corpo do menu
echo 1) Tecle 1 para: Abrir Disk Part.
echo.
echo 2) Tecle 2 para: Atualizar todos os programas.
echo.
echo 3) Tecle 3 para: Ver estabilidade do Siga.
echo.
echo 4) Tecle 4 para: Conhecer o Linux da Google online e gratuito (para testes de seguranca).
echo.
echo 0) Tecle 0 para: Sair do Script.
echo.
echo.
:: Entrada do usuário para selecionar a Opção.
:: Exemplo:
:: SET /P variable_name="[text]"
set /p opcao= Informe a tecla desejada: 
echo #################################
color E0
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 0 goto opcao0
if %opcao% GEQ 5 goto opcao5
:: Se for inserido um número "Grather or Equal" to 5" = Maior ou igual a 5: Sair do Script.

:: Execução da Opção 1 do Menu.
:opcao1
color A0
cls
start cmd /c "diskpart.exe"
:: Abrir o Prompt de Comando.
:: /k = manter aberto.
:: /c = fechar após execução..
:: ("") Aspas duplas = são usadas para evitar problemas com espaços no caminho do arquivo.
goto menu

:: Execução da Opção 2 do Menu.
:opcao2
color B0
cls
start cmd /k "winget upgrade --all --accept-package-agreements --include-unknown"
pause
:: Tela de "Pressione qualquer tecla..."
goto menu

:: Execução da Opção 3 do Menu.
:opcao3
color F0
cls
ping siga.cps.sp.gov.br | find "Recebidos" >> Ping.txt
ping siga.cps.sp.gov.br | find "Perdidos" >> Ping.txt
if %errorlevel%==0 echo "Funcionando! Sem desculpas disponíveis para atrasar entregas de trabalhos." >> Ping.txt
if %errorlevel%==1 echo "Ihhh… Deu ruim!" >> Ping.txt
start notepad.exe Ping.txt
pause
cls
goto menu

:: Execução da Opção 4 do Menu.
:opcao4
color E0
cls
start chrome.exe "https://shell.cloud.google.com/?hl=pt-br&pli=1&show=ide&environment_deployment=ide"
goto menu

:: Execução da Opção 0 do Menu.
:opcao0
cls
exit

:: Execução da Opção 5 ou maior do Menu.
:opcao5
color 0b
echo ==============================================
echo * Opção invalida! Escolha outra opção do menu *
echo ==============================================
pause
cls
goto menu
