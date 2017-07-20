/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author IG - GES
 */
public class DACHabitaciones {
    
    public DACHabitaciones(){
        
    }
  
    public static CHabitaciones sqlLeer(int id){     
        CHabitaciones habitacion = new CHabitaciones();        
        if(!OracleConection.getInstance().sqlSelect("SELECT * FROM \"habitaciones\" WHERE \"id_habitacion\" ="+id+"")){
            return null;
        }        
        if(!OracleConection.getInstance().sqlFetch()){
            return null;
        }        
        habitacion.setIdHabitacion(OracleConection.getInstance().getInt("id_habitacion"));
        habitacion.setIdHotel(OracleConection.getInstance().getInt("id_hotel"));
        habitacion.setIdHabitacionTipo(OracleConection.getInstance().getInt("id_habitacion_tipo"));
        habitacion.setIdHabitacionEstado(OracleConection.getInstance().getInt("id_habitacion_estado"));
        habitacion.setUbicacion(OracleConection.getInstance().getString("ubicacion"));
        habitacion.setCantPersonas(OracleConection.getInstance().getInt("cant_personas"));
        habitacion.setPrecio(OracleConection.getInstance().getInt("precio"));
        return habitacion;
    }
}
