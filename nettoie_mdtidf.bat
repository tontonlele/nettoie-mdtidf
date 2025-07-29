@echo off
title Nettoyage Image Win 10 IDF ATOS
cls

echo ----------------------------------------------
echo Nettoyage Image Win 10 IDF ATOS
echo ----------------------------------------------
echo.

REM Etape 1 : Suppression raccourci SumatraPDF
echo Etape 1 : Suppression raccourci SumatraPDF
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\SumatraPDF.lnk" >nul 2>&1
if %errorlevel%==0 (
    echo -> Raccourci SumatraPDF supprime avec succes.
) else (
    echo -> Le raccourci SumatraPDF n'existait pas ou n'a pas pu être supprime.
)
echo.

REM Etape 2 : Désinstallation VLC
echo Etape 2 : Désinstallation VLC
MsiExec.exe /qn /norestart /X{0E4FF85A-F565-49EF-9FBF-E0FB83FF0E46}
if %errorlevel%==0 (
    echo -> VLC desinstalle avec succes.
) else (
    echo -> Erreur lors de la desinstallation de VLC ou VLC n'est pas installe.
)
echo.

echo Nettoyage termine. Fermeture de la fenetre dans 5 secondes...
timeout /t 5 >nul
exit
