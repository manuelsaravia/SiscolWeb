/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Manuel
 */
public class TiendaDao {

    private Connection co;
    private ResultSet rs;
    private PreparedStatement ps;

    public TiendaDao(Connection c) {
        co = c;
    }

    /*
    public String registrarTienda(Tienda t, String id) {
        String msg = "";
        try {
            this.ps = this.co.prepareStatement("Insert Into tienda (nombre,idTienda,telefono,extension,direccion,email,idAdministrador) "
                    + "Values (?,?,?,?,?,?,?);");
            this.ps.setString(1, t.getNombre());
            this.ps.setString(2, t.getCodigo());
            this.ps.setString(3, t.getTelefono());
            this.ps.setString(4, t.getExtension());
            this.ps.setString(5, t.getDireccion());
            this.ps.setString(6, t.getEmail());
            this.ps.setString(7, id);

            this.ps.execute();
            msg = "OK";
        } catch (SQLException sq) {
            System.out.println(sq.getMessage());
            msg = "error";
        } finally {
            try {
                this.ps.close();
                this.ps = null;
            } catch (SQLException ex) {
                Logger.getLogger(EmpleadoDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return msg;
    }
    

    public String eliminarTienda(String dato, String id) {
        String msg = "";
        try {
            this.ps = this.co.prepareStatement("Update tienda set estado=0 where (upper(nombre)=upper('" + dato + "') or idTienda='" + dato + "' or upper(email)=upper('" + dato + "')) and idAdministrador=" + id + ";");
            int x = this.ps.executeUpdate();
            if (x > 0) {
                msg = "OK";
            } else {
                msg = "error";
            }
        } catch (SQLException sq) {
            System.out.println(sq.getMessage());
            msg = "error";
        } finally {
            try {
                this.ps.close();
                this.ps = null;
            } catch (SQLException ex) {
                Logger.getLogger(EmpleadoDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return msg;
    }

    public String consultarTienda(String dato, String id) {
        String msg = "";
        try {
            this.ps = this.co.prepareStatement("select t.idTienda, upper(t.nombre), upper(t.direccion) "
                    + "from tienda t where (upper(t.nombre)=upper('" + dato + "') or t.idTienda='" + dato + "') "
                    + "and t.estado=1 and t.idAdministrador=" + id + ";");

            System.out.println("select upper(t.nombre), upper(t.direccion), upper(e.nombre), upper(e.email) "
                    + "from empleado e, tienda t, encargadotienda et where (upper(t.nombre)=upper('" + dato + "') or t.idTienda='" + dato + "') "
                    + "and t.idTienda = et.idTienda and et.idEmpleado = e.idEmpleado and e.estado=1;");

            this.rs = this.ps.executeQuery();
            if (this.rs.next()) {
                msg += "<tr><td>" + this.rs.getString(1) + "</td>";
                msg += "<td>" + this.rs.getString(2) + "</td>";
                msg += "<td>" + this.rs.getString(3) + "</td>";
                this.ps.clearParameters();
                this.ps = this.co.prepareStatement("select upper(e.nombre), upper(e.email) "
                        + "from empleado e, tienda t, encargadotienda et where (upper(t.nombre)=upper('" + dato + "') or t.idTienda='" + dato + "') "
                        + "and t.idTienda = et.idTienda and et.idEmpleado = e.idEmpleado and e.estado=1 and t.idAdministrador=" + id + ";");
                ResultSet rr = this.ps.executeQuery();
                if (rr.next()) {
                    msg += "<td>" + rr.getString(1) + "</td>";
                    msg += "<td>" + rr.getString(2) + "</td></tr>";
                } else {
                    msg += "<td>" + "-" + "</td>";
                    msg += "<td>" + "-" + "</td></tr>";
                }

            } else {
                msg = "vacio";
            }

        } catch (SQLException sq) {
            System.out.println(sq.getMessage());
            msg = "error";
        } finally {
            try {
                this.ps.close();
                this.ps = null;
                this.rs = null;
            } catch (SQLException ex) {
                Logger.getLogger(EmpleadoDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return msg;
    }
    */

    public String insertar(Persona p) {
        String msg = "";
        try {
            this.ps = this.co.prepareStatement("Insert Into Persona (nombre,apellido,documento,email,idPersona) "
                    + "Values (?,?,?,?,?);");
            this.ps.setString(1, p.getNombre());
            this.ps.setString(2, p.getApellido());
            this.ps.setString(3, p.getDocumento());
            this.ps.setString(4, p.getEmail());
            this.ps.setInt(5, 1);

            this.ps.execute();
            msg = "OK";
        } catch (SQLException sq) {
            System.out.println(sq.getMessage());
            msg = "error";
        } finally {
            try {
                this.ps.close();
                this.ps = null;
            } catch (SQLException ex) {
                Logger.getLogger(TiendaDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return msg;
    }
}
