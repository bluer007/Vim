@echo off

echo 进入工作目录: %~dp0
cd /d %~dp0

::复制主题文件
mkdir "%USERPROFILE%\vimfiles\colors" 1>nul 2>nul
copy /y /b  monokai.vim  "%USERPROFILE%\vimfiles\colors" 1>nul    && echo successfully:    copy /y /b  monokai.vim  "%USERPROFILE%\vimfiles\colors"
copy /y /b  Tomorrow-Night-Eighties.vim  "%USERPROFILE%\vimfiles\colors" 1>nul    && echo successfully:    copy /y /b  Tomorrow-Night-Eighties.vim  "%USERPROFILE%\vimfiles\colors"
	
::备份配置文件
copy /y /b   "%USERPROFILE%\.vimrc"  "%USERPROFILE%\.vimrc.bak" 1>nul    && echo successfully:    copy /y /b   "%USERPROFILE%\.vimrc"  "%USERPROFILE%\.vimrc.bak"

::复制vim配置文件
copy /y /b  vimrc "%USERPROFILE%\.vimrc" 1>nul    && echo successfully:    copy /y /b  vimrc "%USERPROFILE%\.vimrc"

::复制ideavim配置文件
copy /y /b  ideavimrc "%USERPROFILE%\.ideavimrc" 1>nul    && echo successfully:    copy /y /b  ideavimrc "%USERPROFILE%\.ideavimrc"

::设置允许powershell执行脚本
powershell "Set-ExecutionPolicy -Scope CurrentUser RemoteSigned"

::下载并安装vim-plug插件管理器
if  exist "%USERPROFILE%\vimfiles\autoload\plug.vim" (
	echo 安装配置文件成功, 请运行vim后手工运行 ^<esc^>:PlugInstall 命令
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

powershell "%temp%\download_vim_plug.ps1"  ||      echo '安装失败, vim-plug插件管理器, 详情看https://github.com/junegunn/vim-plug'   && echo 'Vim-plug: install successfully!'


echo '安装配置文件成功, 请运行vim后手工运行 <esc>:PlugInstall 命令'




