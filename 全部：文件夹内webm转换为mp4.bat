@echo off
chcp 65001 >nul
title WebM转MP4批量转换器

echo ========================================
echo       WebM转MP4批量转换器
echo ========================================
echo.

set /p input_dir="请输入WebM文件夹路径（直接回车=当前文件夹）: "

if "%input_dir%"=="" set input_dir=.

set count=0
for %%i in ("%input_dir%\*.webm") do (
    set /a count+=1
    echo.
    echo [%count%] 正在转换: "%%~nxi"
    echo ----------------------------------------
    
    REM -stats参数会显示实时编码进度
    ffmpeg -i "%%i" -c:v libx264 -crf 17 -preset slow -c:a aac "%%~dpni.mp4" -y -stats
    
    echo.
    echo ✓ 完成: "%%~dpni.mp4"
    echo.
)

echo ========================================
echo 转换完成！共处理 %count% 个文件
pause