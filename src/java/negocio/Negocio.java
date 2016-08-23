/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import controller.Controlador;
import dto.Persona;
import util.ServicioEmail;

/**
 *
 * @author msaravia
 */
public class Negocio {
    
    public Negocio(){}
    
    public String leerDatosPersona(Persona p){
        
        Controlador c=new Controlador();
        return c.insertar(p);
    }
    
    public void enviar(){
        ServicioEmail se = new ServicioEmail("manuel@institutoreinounido.edu.co", "Jasonsaravia94");
        //ServicioEmail se = new ServicioEmail("manuel.saravia.bulla@gmail.com", "jasonsaraviab");
        se.enviarEmail("natalia.andrea.tovar@gmail.com", "hola", "hola");
        se.enviarEmail("manuel.saravia.bulla@gmail.com", "hola", "hola");
    }
    
    
}
