/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author msaravia
 */
public class Persona {

    private String tipoDoc;
    private String documento;
    private String nombre;
    private String apellido;
    private String telCasa;
    private String movil;
    private String email;

    public Persona() {
    }

    public String getTipoDoc() {
        String msg ="" ;
        if(this.tipoDoc.equals("1")){
            msg = "CC";
        }
        else{
            if(this.tipoDoc.equals("2")){
                msg = "TI";
            }
            else{
                msg = "NUIP";
            }
        }
        return msg;
    }
    
    public void setTipoDoc(String tipo){
        this.tipoDoc = tipo;
    }
    
    public String getDocumento(){
        return this.documento;
    }
    
    public void setDocumento(String documento){
        this.documento = documento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelCasa() {
        return telCasa;
    }

    public void setTelCasa(String telCasa) {
        this.telCasa = telCasa;
    }

    public String getMovil() {
        return movil;
    }

    public void setMovil(String movil) {
        this.movil = movil;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
