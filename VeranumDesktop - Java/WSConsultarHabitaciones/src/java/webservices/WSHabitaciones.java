/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webservices;

import Modelo.CHabitaciones;
import Modelo.DACHabitaciones;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Francisco Demetrio
 */
@WebService(serviceName = "WSHabitaciones")
public class WSHabitaciones {


    /**
     * Web service operation
     */
    @WebMethod(operationName = "leerHabitaciones")
    public CHabitaciones leerHabitaciones(@WebParam(name = "IdHabitacion") int IdHabitacion) {
       DACHabitaciones da = new DACHabitaciones();
       CHabitaciones habitacion = da.sqlLeer(IdHabitacion);
       return habitacion;
    }
}
