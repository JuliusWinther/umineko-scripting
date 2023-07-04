php B:/Umineko-Project-Scripting/umineko-scripting-testing/update-manager/update-manager.php dscript en.txt B:/Umineko-Project-Scripting/umineko-scripting-testing/ en 3000 || exit 1
php B:/Umineko-Project-Scripting/umineko-scripting-testing/update-manager/update-manager.php script en.txt en.file 8 || exit 1
rm en.txt
mv /Y en.file B:/Umineko-Project-Scripting/UminekoProject-Testing
start "" B:/Umineko-Project-Scripting/UminekoProject-Testing/onscripter-ru.exe
exit 0