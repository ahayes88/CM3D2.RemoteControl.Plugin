@ECHO OFF
REM $Id$
REM �J�����g�f�B���N�g�����̑S�Ẵ��[�V����(*.anm)��Ђ��[������s���܂�
SET PLINK="X:\Program Files\PuTTY\plink.exe"
SET CM3D2_HOST=127.0.0.1
SET CM3D2_PORT=9000

FOR /F "delims=" %%I in ('dir /B *.anm') do (
	echo MOTION=%%~nI �����s��
	echo MOTION=%%~nI | %PLINK% -raw -P %CM3D2_PORT% %CM3D2_HOST%
	pause > NUL
)
