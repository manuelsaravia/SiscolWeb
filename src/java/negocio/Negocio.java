/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import dto.Persona;

/**
 *
 * @author msaravia
 */
public class Negocio {
    
    public Negocio(){}
    
    public String leerDatosPersona(Persona p){
        
        String apellidos=p.getApellido();
        System.out.println("El apellido es: "+apellidos);
        String tipoDoc=p.getTipoDoc();
        System.out.println("El tipo de documento es:"+tipoDoc);
        String numDoc=p.getDocumento();
        System.out.println("El numero de documente es:"+numDoc);
        String nombre=p.getNombre();
        System.out.println("El nombre es:"+nombre);
        String telCasa=p.getTelCasa();
        System.out.println("Telefon de recidencia:"+telCasa);
        String movil=p.getMovil();
        System.out.println("Número movil es:"+movil);
        String email=p.getEmail();
        System.out.println("Email:"+email);
        return "ok";
    }
    
    
}
