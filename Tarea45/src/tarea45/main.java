/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tarea45;

import java.util.ArrayList;

/**
 *
 * @author Junior
 */
public class main {

    /**
     * @param args the command line arguments
     */
    public static ArrayList<ErrorLexico> listaErrores = new ArrayList();
    public static ArrayList<ErrorLexico> listaSintacticos = new ArrayList();
    public static void main(String[] args) {
        // TODO code application logic here
        Form form = new Form();
        form.show();
    }
    
}
