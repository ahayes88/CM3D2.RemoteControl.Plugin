@ECHO OFF
REM $Id$
REM �J�����g�f�B���N�g�����̑S�Ă̌��ʉ�(se*.ogg)��Ђ��[����Đ����܂�
SET PLINK="X:\Program Files\PuTTY\plink.exe"
SET CM3D2_HOST=127.0.0.1
SET CM3D2_PORT=9000

FOR /F "delims=" %%I in ('dir /B se*.ogg') do (
	echo SE=%%I �����s��
	echo SE=%%I | %PLINK% -raw -P %CM3D2_PORT% %CM3D2_HOST%
	pause > NUL
)
