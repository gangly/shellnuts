:: 用来随机生成学生座位，六行六列

setlocal EnableDelayedExpansion
@echo off

chcp 65001

set "name1=张艺菡"
set "name2=陈家洋"
set "name3=江林峰"
set "name4=丁钰荞"
set "name5=池雨恒"
set "name6=刘雨桐"
set "name7=龙锦波"
set "name8=邓欣宇"
set "name9=向露怡"
set "name10=游浩宇"
set "name11=周婕妤"
set "name12=黄得志"
set "name13=郑丰贝"
set "name14=尹婉婷"
set "name15=张洋"
set "name16=蒋思多"
set "name17=刘又铭"
set "name18=董鸿梅"
set "name19=黄迪"
set "name20=李涛"
set "name21=湛金秋"
set "name22=魏子钧"
set "name23=张扬"
set "name24=陈杰"
set "name25=王傲立"
set "name26=王紫烟"
set "name27=闫晨阳"
set "name28=陈福玲"
set "name29=彭浬航"
set "name30=张涵伽"
set "name31=李金开"
set "name32=张力"
set "name33=周昳伊"
set "name34=罗铃心"
set "name35=田思念"
set "name36=王钥"

:: 判断文件是否存在，若存在则删除
set "SAVEFILE=d:\students_seat.csv"
if exist %SAVEFILE% (
    echo "已经存在学生座位文件，正在删除该文件..."%SAVEFILE%
    del %SAVEFILE%
)
echo "正在生成学生座位表..."%SAVEFILE%

:: 随机生成1-36 不重复的数字
set /a max=36,min=1,n0=36
set /a num=6

:L
set /a n=%random%%%(max-min+1)+min
set name=!name%n%!
if defined #%n% goto :L
set #%n%=y

if %num%==6 (
    set "words=%name%"
    set /a num-=1
 ) else if %num%==1 (
    set /a num-=1

    echo !words!,!name!
    echo !words!,!name! >> %SAVEFILE%
    set words=
    set /a num=6
) else (
    set "words=%words%,%name%"
    set /a num-=1
)

set /a n0-=1
if %n0% gtr 0 goto :L
pause 
