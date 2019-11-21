/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tarea45;

/**
 *
 * @author Junior
 */
public class ErrorLexico {
    public String err, tipo, fila, columna;

    public ErrorLexico(String err, String tipo, String fila, String columna) {
        this.err = err;
        this.tipo = tipo;
        this.fila = fila;
        this.columna = columna;
    }
    
    public ErrorLexico(){
        
    }
}
