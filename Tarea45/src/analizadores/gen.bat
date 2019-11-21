SET JFLEX_HOME= C:\libs\jflex-1.7.0
cd F:\Universidad\USAC\2019\2 Semestre\Compi 1\Tarea45\DefinicionDirigidaSintaxis\Tarea45\src\analizadores
java -jar %JFLEX_HOME%\jflex-1.7.0.jar --encoding utf-8 Lexico1.jflex
pause

SET CUP_HOME= C:\libs\CUP
cd F:\Universidad\USAC\2019\2 Semestre\Compi 1\Tarea45\DefinicionDirigidaSintaxis\Tarea45\src\analizadores
java -jar %CUP_HOME%\java-cup-11b.jar -parser Parser1 -symbols Simbolos1 Sintactico1.cup 
pause

