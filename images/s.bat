@echo off
setlocal enabledelayedexpansion

set count=1

for %%f in (*.png) do (
    ren "%%f" "temp!count!.png"
    set /a count+=1
)

set count=1

for %%f in (temp*.png) do (
    ren "%%f" "hammam!count!.png"
    set /a count+=1
)

echo Готово!
pause