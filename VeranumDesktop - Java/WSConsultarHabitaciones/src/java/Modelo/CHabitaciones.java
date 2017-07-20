/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author IG - GES
 */
public final class CHabitaciones {
    
    private int idHabitacion;
    private int idHotel;
    private int idHabitacionTipo;
    private int idHabitacionEstado;
    private String ubicacion;
    private int cantPersonas;
    private int precio;

    public CHabitaciones() {

    }
    
    public CHabitaciones(int idHabitacion) {
        setIdHabitacion(idHabitacion);
    }
    
    public CHabitaciones(int idHotel, int idHabitacionTipo, int idHabitacionEstado, String ubicacion, int cantPersonas, int precio) {
        setIdHotel(idHotel);
        setIdHabitacionTipo(idHabitacionTipo);
        setIdHabitacionEstado(idHabitacionEstado);
        setUbicacion(ubicacion);
        setCantPersonas(cantPersonas);
        setPrecio(precio);
    }
    
    public CHabitaciones(int idHabitacion, int idHotel, int idHabitacionTipo, int idHabitacionEstado, String ubicacion, int cantPersonas, int precio) {
        setIdHabitacion(idHabitacion);
        setIdHotel(idHotel);
        setIdHabitacionTipo(idHabitacionTipo);
        setIdHabitacionEstado(idHabitacionEstado);
        setUbicacion(ubicacion);
        setCantPersonas(cantPersonas);
        setPrecio(precio);
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public int getIdHabitacionTipo() {
        return idHabitacionTipo;
    }

    public void setIdHabitacionTipo(int idHabitacionTipo) {
        this.idHabitacionTipo = idHabitacionTipo;
    }

    public int getIdHabitacionEstado() {
        return idHabitacionEstado;
    }

    public void setIdHabitacionEstado(int idHabitacionEstado) {
        this.idHabitacionEstado = idHabitacionEstado;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public int getCantPersonas() {
        return cantPersonas;
    }

    public void setCantPersonas(int cantPersonas) {
        this.cantPersonas = cantPersonas;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    
    @Override
    public String toString(){
        return getUbicacion();
    }
    
    
    
    
    
    
}
