package analizadores;
import java_cup.runtime.Symbol;
import tarea45.ErrorLexico;
%% 

%{
    public void agregarError(String lexema, String tipo){
        String linea, columna;
        linea = Integer.toString(yyline);
        columna = Integer.toString(yycolumn);
        tarea45.main.listaErrores.add(new ErrorLexico(lexema, tipo, linea, columna));
    }
%}

%class Lexico1
%public 
%unicode
%full
%line 
%char 
%column
%ignorecase
%cup
%8bit
%cupsym Simbolos1

espacios = [ |\r|\t|\n|\f]*
pares = [0|2|4|6|8]
impares = [1|3|5|7|9]
%%
<YYINITIAL> {
"," {return new Symbol(Simbolos1.coma,yyline,yychar, yytext());}

{espacios} {}
{pares} {return new Symbol(Simbolos1.par,yyline,yychar, yytext());}
{impares} {return new Symbol(Simbolos1.impar,yyline,yychar, yytext());}
}
. {
    System.out.println("Error lexico "+ yytext() +" linea No: "+ yyline+ " columna: " +yycolumn); 
    agregarError(yytext(), "No se reconoce");
}