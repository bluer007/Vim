@echo off

echo ���빤��Ŀ¼: %~dp0
cd /d %~dp0

::���������ļ�
mkdir "%USERPROFILE%\vimfiles\colors" 1>nul 2>nul
copy /y /b  monokai.vim  "%USERPROFILE%\vimfiles\colors" 1>nul    && echo successfully:    copy /y /b  monokai.vim  "%USERPROFILE%\vimfiles\colors"
copy /y /b  Tomorrow-Night-Eighties.vim  "%USERPROFILE%\vimfiles\colors" 1>nul    && echo successfully:    copy /y /b  Tomorrow-Night-Eighties.vim  "%USERPROFILE%\vimfiles\colors"
	
::���������ļ�
copy /y /b   "%USERPROFILE%\.vimrc"  "%USERPROFILE%\.vimrc.bak" 1>nul    && echo successfully:    copy /y /b   "%USERPROFILE%\.vimrc"  "%USERPROFILE%\.vimrc.bak"

::����vim�����ļ�
copy /y /b  vimrc "%USERPROFILE%\.vimrc" 1>nul    && echo successfully:    copy /y /b  vimrc "%USERPROFILE%\.vimrc"

::����ideavim�����ļ�
copy /y /b  ideavimrc "%USERPROFILE%\.ideavimrc" 1>nul    && echo successfully:    copy /y /b  ideavimrc "%USERPROFILE%\.ideavimrc"

::��������powershellִ�нű�
powershell "Set-ExecutionPolicy -Scope CurrentUser RemoteSigned"

::���ز���װvim-plug���������
if  exist "%USERPROFILE%\vimfiles\autoload\plug.vim" (
	echo ��װ�����ļ��ɹ�, ������vim���ֹ����� ^<esc^>:PlugInstall ����
	exit /b 0
)

echo md ~\vimfiles\autoload  > "%temp%\download_vim_plug.ps1"
echo $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' >> "%temp%\download_vim_plug.ps1"
echo (New-Object Net.WebClient).DownloadFile( >> "%temp%\download_vim_plug.ps1"
echo  $uri, >> "%temp%\download_vim_plug.ps1"
echo    $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath( >> "%temp%\download_vim_plug.ps1"
echo      "~\vimfiles\autoload\plug.vim" >> "%temp%\download_vim_plug.ps1"
echo    ) >> "%temp%\download_vim_plug.ps1"
echo  ) >> "%temp%\download_vim_plug.ps1"

powershell "%temp%\download_vim_plug.ps1"  ||      echo '��װʧ��, vim-plug���������, ���鿴https://github.com/junegunn/vim-plug'   && echo 'Vim-plug: install successfully!'


echo '��װ�����ļ��ɹ�, ������vim���ֹ����� <esc>:PlugInstall ����'




