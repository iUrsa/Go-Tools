@echo off
chcp 65001 >nul
title WebM转MP4转换器

echo ========================================
echo        WebM转MP4转换器
echo ========================================
echo.
echo 请将WebM文件拖拽到此窗口，然后按回车
echo 提示：可以一次拖拽多个文件
echo.
set /p files="拖拽文件到此处: "

for %%i in (%files%) do (
    echo 正在转换: "%%i"
    ffmpeg -i "%%i" -c:v libx264 -c:a aac "%%~dpni.mp4"
    echo 已完成: "%%~dpni.mp4"
    echo.
)

echo ========================================
echo 所有文件转换完成！
pause