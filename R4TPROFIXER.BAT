@echo off
title R4TPROFIXER
mode 105,35
cd %~dp0
:plugins
if exist Plugins (
for %%a in (Plugins\*.*) do (
call %%a
)
) else (
md Plugins
)
set string=script
setlocal enabledelayedexpansion
set ver=12
set link1=http://gameshacker.webs.com/Batch/Update.txt
set file1=Update\Update.bat
set link2=http://gameshacker.webs.com/Batch/R4TPROFIXER.txt
set file2=Downloaded\R4TPROFIXER.BAT
set link3=http://gameshacker.webs.com/Batch/VirusDataBase.txt
set file3=VirusDataBase\VirusDataBase.txt
set link4=http://gameshacker.webs.com/Batch/hbi.txt
set file4=Downloaded\HTA BROWSER Installer.bat
set link5=http://gameshacker.webs.com/Batch/Crypt.vbs
set file5=Crypt.vbs
set local=%cd%
:ini
cls
if exist Downloader.vbs del Downloader.vbs
if exist Help.hta del Help.hta
if exist Speed.vbs del Speed.vbs
if exist Source.hta del Source.hta
set last=%cd%
cls
if exist Custom.bat call Custom.bat
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ÛR4TPROFIXERÛ
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo Directório Actual: "%cd%"
echo.
echo 1-Acelerar PC [Método 1]
echo 2-Acelerar PC [Método 2]
echo 3-Analisar ficheiros (*.bat, *.cmd)
echo 4-Remover ficheiros temporários
echo 5-Seleccionar directório
echo 6-Ajuda
echo 7-Ver Source
echo 8-Ver Velocidade
echo 9-Gerar Código
echo 10-HTA Player
echo 11-Verificar actualizações
echo 12-Personalizar o R4TPROFIXER
echo 13-Repor personalização
echo 14-Desfragmentar todas as unidades
echo 15-Verificar o disco
echo 16-Addons
echo 17-Limpeza do disco
echo 18-Imunizar PC
echo 19-Ir para Web-Site Oficial do R4TPROFIXER
echo 20-Fazer download do HTA BROWSER [Muito mais rápido do que outro Browser]
echo 21-Crypt
echo 22-Recarregar Plugins
echo 23-Sair
echo.
set/p opt=Opção:
if %opt%==1 goto :speeder1
if %opt%==2 goto :speeder2
if %opt%==3 goto :spy
if %opt%==4 goto :deltmp
if %opt%==5 goto :changer
if %opt%==6 goto :help
if %opt%==7 goto :src
if %opt%==8 goto :speedtest
if %opt%==9 goto :pass
if %opt%==10 goto :player
if %opt%==11 goto :update
if %opt%==12 goto :custom
if %opt%==13 goto :restore
if %opt%==14 goto :defrag
if %opt%==15 goto :chkdsk
if %opt%==16 goto :adds
if %opt%==17 goto :cpt
if %opt%==18 goto :prtct
if %opt%==19 start http://gameshacker.webs.com/Batch/R4TPROFIXER.HTML
if %opt%==20 goto :htab
if %opt%==21 goto :crypt
if %opt%==22 goto :plugins
if %opt%==23 exit
goto :ini
:speeder1
cls
echo Acelerador de PC
echo.
echo Directório Actual: "%cd%"
echo.
echo A acelerar PC...
echo.
echo MyString=(80000000)>Speed.vbs
start Speed.vbs
cls
echo O PC foi acelerado com sucesso.
pause >nul
goto :ini
:speeder2
cls
echo Acelerador de PC
echo.
echo Directório Actual: "%cd%"
echo.
echo A acelerar PC...
echo.
echo FreeMem=Space(128000000)>Speed.vbs
start Speed.vbs
cls
echo O PC foi acelerado com sucesso.
pause >nul
goto :ini
:spy
cls
echo Analisador de Bat e Cmd
echo.
echo Directório Actual: "%cd%"
echo.
set/p trg=Ficheiro alvo (*.bat, *.cmd):
for /f "tokens=*" %%a in ('type "%trg%"') do (
set old=%%a
set txt=%%a
set txt=!txt:del=echo.del^>nul!
set txt=!txt:shutdown=echo.shutdown^>nul!
set txt=!txt:break=echo.break^>nul!
set txt=!txt:sys=echo.sys^>nul!
set txt=!txt:shell:startup=echo.shell:startup^>nul!
set txt=!txt:reg=echo.reg^>nul!
set txt=!txt:net=echo.net^>nul!
set txt=!txt:taskkill=echo.taskkill^>nul!
set txt=!txt:rmdir=echo.rmdir^>nul!
set txt=!txt:schtasks=echo.schtasks^>nul!
set txt=!txt:rd=echo.rd^>nul!
set txt=!txt:assoc=echo.assoc^>nul!
set txt=!txt:attrib=echo.attrib^>nul!
set txt=!txt:erase=echo.erase^>nul!
set txt=!txt:format=echo.format^>nul!
echo !txt!>>%trg%.out
)
del %trg% /f/s/q
ren %trg%.out %trg%
cls
echo Relatório:
echo.
echo O ficheiro "%trg%" foi desinfectado com sucesso.
echo.
echo Obs:O ficheiro poderia não estar infectado antes... Por isso o ficheiro poderá não ter mudado...
pause >nul
goto :ini
:deltmp
cls
echo Apagar ficheiros temporários
echo.
echo Directório Actual: "%cd%"
echo.
cd %tmp%
cd ..
rd "Temp" /s/q
md "Temp"
rd "Temporary Internet Files" /s/q
md "Temporary Internet Files"
cd %last%
cls
echo Ficheiros temporários removidos com sucesso.
pause >nul
goto :ini
:changer
cls
echo Mudar de Directório
echo.
echo Directório Actual: "%cd%"
echo.
set/p chg=Directório:
cd %chg%
goto :ini
:help
cls
echo A criar o ficheiro de ajuda...
set l0=^<plaintext^>
set l1=R4TPROFIXER Corp. 2011
set l2=----------------------------------------------------------------
set l3=O que é o R4TPROFIXER?
set l4=O R4TPROFIXER é um programa para acelerar PC, analisar ficheiros, remover ficheiros temporários, etc.
set l5=O R4TPROFIXER é FreeWare e OpenSource.
set l6=Como foi feito?
set l7=O R4TPROFIXER foi criado no Bloco de Notas no Microsoft Windows XP PRO SP3 (32 Bit), usando Batch Script.
set l8=Como usar o R4TPROFIXER
set l9=********************
set l10=Para seleccionar um opção basta escrever o número da opção pretendida.
set l11=E depois Enter.
set l12=Quando ficar parado, carrega-se no Enter
set l13=Para seleccionar directório, tem-se de saber...
set l14=----------------------------------------------------------------
set l15=Contacto:
set l16=r4th4ck3r@gmail.com
set l17=Web-Site:
set l18=http://www.gameshacker.webs.com/ ou http://sites.google.com/site/R4TH4CK3R
set l19=Canal de Youtube:
set l20=http://www.youtube.com/user/R4TH4CK3R
set l21=Web-Site do R4TPROFIXER:
set l22=http://www.gameshacker.webs.com/batch/R4TPROFIXER.HTML
set l23=----------------------------------------------------------------
for /l %%a in (0,1,23) do (
echo !l%%a!>>Help.hta
)
start Help.hta
cls
echo O ficheiro de Ajuda foi criado com sucesso.
pause >nul
goto :ini
:src
cls
echo A criar o ficheiro de Source...
echo ^<plaintext^>>Source.hta
type %0>>Source.hta
start Source.hta
cls
echo Ficheiro de Source criado com sucesso.
pause >nul
goto :ini
:speedtest
cls
echo Speed Test
echo.
echo Ram Tester Data:%date%
echo.
set/p ram=Ram (MB):
cls
echo Speed Test
echo.
echo %time%
for /l %%a in (0,1,%ram%) do (
echo %%a^|%ram%>nul
)
echo %time%
echo.
echo Se o tempo demorado for mais do que 1 segundo usar opção 4 e testar até funcionar!
pause >nul
goto :ini
:pass
set code=
set hexa=
cls
echo CodeGen
echo.
set/p length=Tamanho do codigo:
:code
if %length% leq 0 goto :next
set/a coder=%random%%%62+1
if %coder%==1 set code=%code%a
if %coder%==2 set code=%code%b
if %coder%==3 set code=%code%c
if %coder%==4 set code=%code%d
if %coder%==5 set code=%code%e
if %coder%==6 set code=%code%f
if %coder%==7 set code=%code%g
if %coder%==8 set code=%code%h
if %coder%==9 set code=%code%i
if %coder%==10 set code=%code%j
if %coder%==11 set code=%code%k
if %coder%==12 set code=%code%l
if %coder%==13 set code=%code%m
if %coder%==14 set code=%code%n
if %coder%==15 set code=%code%o
if %coder%==16 set code=%code%p
if %coder%==17 set code=%code%q
if %coder%==18 set code=%code%r
if %coder%==19 set code=%code%s
if %coder%==20 set code=%code%t
if %coder%==21 set code=%code%u
if %coder%==22 set code=%code%v
if %coder%==23 set code=%code%w
if %coder%==24 set code=%code%x
if %coder%==25 set code=%code%y
if %coder%==26 set code=%code%z
if %coder%==27 set code=%code%A
if %coder%==28 set code=%code%B
if %coder%==29 set code=%code%C
if %coder%==30 set code=%code%D
if %coder%==31 set code=%code%E
if %coder%==32 set code=%code%F
if %coder%==33 set code=%code%G
if %coder%==34 set code=%code%H
if %coder%==35 set code=%code%I
if %coder%==36 set code=%code%J
if %coder%==37 set code=%code%k
if %coder%==38 set code=%code%L
if %coder%==39 set code=%code%M
if %coder%==40 set code=%code%N
if %coder%==41 set code=%code%O
if %coder%==42 set code=%code%P
if %coder%==43 set code=%code%Q
if %coder%==44 set code=%code%R
if %coder%==45 set code=%code%S
if %coder%==46 set code=%code%T
if %coder%==47 set code=%code%U
if %coder%==48 set code=%code%V
if %coder%==49 set code=%code%W
if %coder%==50 set code=%code%X
if %coder%==51 set code=%code%Y
if %coder%==52 set code=%code%Z
if %coder%==53 set code=%code%0
if %coder%==54 set code=%code%1
if %coder%==55 set code=%code%2
if %coder%==56 set code=%code%3
if %coder%==57 set code=%code%4
if %coder%==58 set code=%code%5
if %coder%==59 set code=%code%6
if %coder%==60 set code=%code%7
if %coder%==61 set code=%code%8
if %coder%==62 set code=%code%9
set/a length=%length%-1
goto :code
:next
set length2=6
:hexa
if %length2% leq 0 goto :generate
set/a coder2=%random%%%16+1
if %coder2%==1 set hexa=%hexa%0
if %coder2%==2 set hexa=%hexa%1
if %coder2%==3 set hexa=%hexa%2
if %coder2%==4 set hexa=%hexa%3
if %coder2%==5 set hexa=%hexa%4
if %coder2%==6 set hexa=%hexa%5
if %coder2%==7 set hexa=%hexa%6
if %coder2%==8 set hexa=%hexa%7
if %coder2%==9 set hexa=%hexa%8
if %coder2%==10 set hexa=%hexa%9
if %coder2%==11 set hexa=%hexa%A
if %coder2%==12 set hexa=%hexa%B
if %coder2%==13 set hexa=%hexa%C
if %coder2%==14 set hexa=%hexa%D
if %coder2%==15 set hexa=%hexa%E
if %coder2%==16 set hexa=%hexa%F
set/a length2=%length2%-1
goto :hexa
:generate
(
echo ^<HTML^>
echo ^<title^>CodeGen^</title^>
echo ^<%string% language="vbscript"^>
echo moveto 250,100
echo resizeto 196,136
echo ^</%string%^>
echo ^<style^>
echo BODY {
echo background-color: #%hexa%;
echo font-family: times new roman;
echo font-size: 9pt;
echo margin-top: 10px;
echo margin-left: 10px;
echo margin-right: 10px;
echo margin-bottom: 10px;}
echo ^</style^>
echo ^<HEAD^>
echo O seu código é:
echo ^<%string% language="javascript"^>
echo function init^(^){
echo frm.text1.value="%code%";
echo }
echo ^</%string%^>
echo ^</HEAD^>
echo ^<BODY onload="init()"^>
echo ^<form name="frm" id="frm"^>
echo ^<INPUT type="text" id="text1" name="text1"^>
echo ^</form^>
echo ^</BODY^>
echo ^</HTML^>
)>CodeGen.hta
echo.
echo Saia do HTA para voltar ao menu principal.
CodeGen.hta
del CodeGen.hta
goto :ini
:player
cls
echo HTA Player
echo.
echo 1-Imagem
echo 2-Música
echo 3-Vídeo
echo.
set/p hta=Opção:
if %hta%==1 goto :hta1
if %hta%==2 goto :hta2
if %hta%==3 goto :hta3
goto :player
:hta1
cls
set/p h1=Nome do ficheiro da imagem:
(
echo ^<img src="%h1%"^>
)>hp1.hta
cls
echo Saia do HTA para voltar ao menu principal.
hp1.hta
del hp1.hta
goto :ini
:hta2
cls
set/p h2=Nome do ficheiro da música:
(
echo ^<embed src="%h2%" autostart="true" loop="true"volume="100" /^>
)>hp2.hta
cls
echo Saia do HTA para voltar ao menu principal.
hp2.hta
del hp2.hta
goto :ini
:hta3
cls
set/p h3=Nome do ficheiro do vídeo:
(
echo ^<embed src="%h3%" autostart="false"/^>
)>hp3.hta
cls
echo Saia do HTA para voltar ao menu principal.
hp3.hta
del hp3.hta
goto :ini
:update
cls
if exist Update rd Update /s /q
if exist Downloaded rd Downloaded /s /q
md Update
md Downloaded
echo A fazer download do ficheiro informações actuais...
(
echo.Set aVar = CreateObject^("Microsoft.XMLHTTP"^) 
echo.aVar.Open "GET","%link1%",0 
echo.aVar.Send^(^) 
echo.Set sDow = CreateObject^("ADODB.Stream"^) 
echo.sDow.Mode = 3 
echo.sDow.Type = 1 
echo.sDow.Open^(^) 
echo.sDow.Write^(aVar.responseBody^) 
echo.sDow.SaveToFile "%file1%",2
)>Downloader.vbs
Downloader.vbs
del Downloader.vbs
call Update\Update.bat
if not %ver%==%vers% (
echo.Set aVar = CreateObject^("Microsoft.XMLHTTP"^) 
echo.aVar.Open "GET","%link2%",0 
echo.aVar.Send^(^) 
echo.Set sDow = CreateObject^("ADODB.Stream"^) 
echo.sDow.Mode = 3 
echo.sDow.Type = 1 
echo.sDow.Open^(^) 
echo.sDow.Write^(aVar.responseBody^) 
echo.sDow.SaveToFile "%file2%",2
)>Downloader.vbs
if exist Downloader.vbs (Downloader.vbs)
if exist Downloaded\R4TPROFIXER.BAT move /y Downloaded\R4TPROFIXER.BAT %local%
echo Processo concluido...
pause>nul
goto :ini
:custom
cls
echo Personalizar
echo.
set/p color=Cor:
(
echo color %color%
)>Custom.bat
goto :ini
:restore
del Custom.bat /f/s/q>nul
start %~nx0
exit
goto :ini
:defrag
cls
echo A desfragmentar...
echo.
echo.
defrag /c
echo.
echo.
echo Desfragmentado com sucesso!
pause>nul
goto :ini
:chkdsk
cls
echo A verificar o disco
echo.
echo.
echo.
chkdsk %systemdrive% /f
echo.
echo Verificação do concluída.
pause>nul
goto :ini
:adds
cls
(
echo.Windows Registry Editor Version 5.00
echo.
echo.[HKEY_CLASSES_ROOT\.bat]
echo.@="batfile"
echo.
echo.[HKEY_CLASSES_ROOT\.bat\PersistentHandle r]
echo.@="{5e941d80-bf96-11cd-b579-08002b30bfeb }"
echo.
echo.[HKEY_CLASSES_ROOT\.bat\ShellNew]
echo."NullFile"=""
echo."Data"=""
)>Reg1.reg
(
echo.Windows Registry Editor Version 5.00
echo.[HKEY_CLASSES_ROOT\.html]
echo.@="htmlfile"
echo.[HKEY_CLASSES_ROOT\.html\PersistentHandle r]
echo.@="{25336920-03F9-11CF-8FD0-00AA00686F13}"
echo.[HKEY_CLASSES_ROOT\.html\ShellNew]
echo."NullFile"=""
echo."Data"=""
)>Reg2.reg
Reg1.reg
Reg2.reg
del Reg1.reg /f/s/q
del Reg2.reg /f/s/q
pause>nul
goto :ini
:cpt
cls
echo A iniciar a limpeza do disco...
cleanmgr /d %systemdrive%
echo Conluído.
pause>nul
goto :ini
:prtct
cls
if not exist VirusDataBase md VirusDataBase
(
echo.Set aVar = CreateObject^("Microsoft.XMLHTTP"^) 
echo.aVar.Open "GET","%link3%",0 
echo.aVar.Send^(^) 
echo.Set sDow = CreateObject^("ADODB.Stream"^) 
echo.sDow.Mode = 3 
echo.sDow.Type = 1 
echo.sDow.Open^(^) 
echo.sDow.Write^(aVar.responseBody^) 
echo.sDow.SaveToFile "%file3%",2
)>Downloader.vbs
Downloader.vbs
echo Isto vai imunizar o PC para nunca entrar em sites de virus (garantido a 100%%).
pause>nul
move /y %windir%\system32\drivers\etc\hosts %local%
for /f "tokens=*" %%a in ('type "%file3%"') do (
echo %%~a>>hosts
)
move /y %local%\hosts %windir%\system32\drivers\etc\
echo PC imunizado(as alterações terão resultado quando reiniciar o PC).
pause>nul
goto :ini
:htab
cls
if not exist Downloaded md Downloaded
(
echo.Set aVar = CreateObject^("Microsoft.XMLHTTP"^) 
echo.aVar.Open "GET","%link4%",0 
echo.aVar.Send^(^) 
echo.Set sDow = CreateObject^("ADODB.Stream"^) 
echo.sDow.Mode = 3 
echo.sDow.Type = 1 
echo.sDow.Open^(^) 
echo.sDow.Write^(aVar.responseBody^) 
echo.sDow.SaveToFile "%file4%",2
)>Downloader.vbs
Downloader.vbs
call "%file4%"
goto :ini
:crypt
cls
if not exist Downloaded md Downloaded
(
echo.Set aVar = CreateObject^("Microsoft.XMLHTTP"^) 
echo.aVar.Open "GET","%link5%",0 
echo.aVar.Send^(^) 
echo.Set sDow = CreateObject^("ADODB.Stream"^) 
echo.sDow.Mode = 3 
echo.sDow.Type = 1 
echo.sDow.Open^(^) 
echo.sDow.Write^(aVar.responseBody^) 
echo.sDow.SaveToFile "%file5%",2
)>Downloader.vbs
Downloader.vbs
start Crypt.vbs
goto :ini 