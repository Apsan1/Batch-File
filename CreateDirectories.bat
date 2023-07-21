@echo off
mkdir Apsan
echo Made directory named Apsan
cd Apsan
mkdir MyModules
echo Made directory named MyModules inside Directory Apsan
pause
echo .
echo ..
echo ...
echo ....
cd MyModules
mkdir 4MM006 4CC001 4CC002
pause
echo .
echo ..
echo ...
echo ....
echo Made directories in MyModules 4MM006 4CC001 4CC002
cd 4MM006
mkdir Lecturers
pause
echo .
echo ..
echo ...
echo ....
echo Making Lecturers directory in 4MM006
cd Lecturers
pause
echo .
echo ..
echo ...
echo ....
echo Making lecturer txt file in 4MM006
echo > Ruth.txt
cd ..
cd ..
pause
cd 4CC001
mkdir Lecturers
echo .
echo ..
echo ...
echo ....
echo Making Lecturers directory in 4CC001
cd Lecturers
pause
echo .
echo ..
echo ...
echo ....
echo Making lecturer txt file in 4CC001
echo > Jeffery.txt
echo > Chris.txt
echo > Ian.txt
cd ..
cd ..
cd 4CC002
mkdir Lecturers
pause
echo .
echo ..
echo ...
echo ....
echo Making Lecturers directory in 4CC002
cd Lecturers
pause
echo .
echo ..
echo ...
echo ....
echo Making lecturer txt file in 4CC002
echo > Alix.txt
cd ..
cd ..
pause
echo .
echo ..
echo ...
echo ....
echo Viewing tree of MyModules directory
pause
cd ..
tree /F
pause
cd MyModules
echo Currently in MyModules directory
echo .
echo ..
echo ...
echo ....
:newfolder
set /p task="Do you want to add another module? (y/n)"
if "%task%" == "n" (
goto end
) else (
goto dir
)

:dir
set /p folder="Enter the directory name: "
if "%folder%" == "" (
    echo Empty string!!!
    echo Try again
    pause
    goto dir
) else ( 
    mkdir "%folder%"
    echo  "%folder%" directory has been added in MyModules
    cd "%folder%"
    mkdir Lecturers
    cd Lecturers
    goto text

)

:text
set /p name="Enter the lecturer name: "
if "%name%" == "" (
    echo Empty String!!! \nTry again
    goto text
) else (
    echo >"%name%.txt"
    goto res
)

:res
set /p res=" Do you want to do add another lecturer? (y/n): ":
if "%res%" == "" (
    echo Empty string
    echo Try again !!
    pause
    goto res
    
) else (
    if "%res%" == "n" (
    echo Going Back To MyModules Folder
    cd ..
    cd ..
    goto continue
    pause

    ) else (
        if "%res%" == "y" (
        echo Sure!
        echo .
        echo ..
        pause
        goto text
    ) else (
        echo Try again !!
        echo Error in input
        pause
        goto res
        )
    )
)

:continue
set /p cont="Do you want to continue adding another folder?(y/n) "
if "%cont%" == "" (
    echo Empty String
    echo Try again
    pause
    goto continue
) else (
    if "%cont%" == "n" (
    echo Thank You!
    echo Going Back to MyModules
    pause
    goto end

    ) else (
        if "%cont%" == "y" (
        echo Preparing to add more directories
        pause
        goto dir
    ) else (
        echo Try again!
        echo Error in input
        pause
        goto continue
        )
    )
)

:end
cd /
cd Apsan
cd MyModules
echo Your new tree
tree /F
echo Thank You
cd /
pause
