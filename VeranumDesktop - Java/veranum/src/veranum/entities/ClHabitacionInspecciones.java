/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package veranum.entities;

import helper.Formularios;
import java.util.Date;

/**
 *
 * @author veranum
 */
public final class ClHabitacionInspecciones {
    private int idHabitacionInspeccion;
    private int idHabitacion;
    private Date fechaInicio;
    private String comentario;
    private String nombreInspector;
    private String nombreHotel;

    public ClHabitacionInspecciones(int idHabitacionInspeccion) {
        setIdHabitacionInspeccion(idHabitacionInspeccion);
    }
    
    public ClHabitacionInspecciones(int idHabitacionInspeccion, int idHabitacion, Date fechaInicio, String comentario, String nombreInspector) {
        setIdHabitacionInspeccion(idHabitacionInspeccion);
        setIdHabitacion(idHabitacion);
        setFechaInicio(fechaInicio);
        setComentario(comentario);
        setNombreInspector(nombreInspector);
    }
    
    public ClHabitacionInspecciones(int idHabitacionInspeccion, int idHabitacion, Date fechaInicio, String comentario, String nombreInspector, String hotel) {
        setIdHabitacionInspeccion(idHabitacionInspeccion);
        setIdHabitacion(idHabitacion);
        setFechaInicio(fechaInicio);
        setComentario(comentario);
        setNombreHotel(hotel);
    }
    
    public ClHabitacionInspecciones(int idHabitacion, Date fechaInicio, String comentario, String nombreInspector) {
        setIdHabitacion(idHabitacion);
        setFechaInicio(fechaInicio);
        setComentario(comentario);
        setNombreInspector(nombreInspector);
    }
    public ClHabitacionInspecciones() {
    }
    
    

    public String getNombreHotel() {
        return nombreHotel;
    }

    public void setNombreHotel(String nombreHotel) {
        this.nombreHotel = nombreHotel;
    }

    
    public int getIdHabitacionInspeccion() {
        return idHabitacionInspeccion;
    }

    public void setIdHabitacionInspeccion(int idHabitacionInspeccion) {
        this.idHabitacionInspeccion = idHabitacionInspeccion;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getNombreInspector() {
        return nombreInspector;
    }

    public void setNombreInspector(String nombreInspector) {
        this.nombreInspector = nombreInspector;
    }
    
    public String getStringFecha(){
        return Formularios.deFechaToString(getFechaInicio());
    }
    
    @Override
    public String toString(){
        return getNombreInspector();
    }
}
