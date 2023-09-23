package controladores;

import java.sql.Connection;
import java.sql.Date;
import java.util.List;

import DAO.HuespedesDAO;
import factory.conexionBase;
import modelo.Huespedes;

public class huespedesControlador {
	private HuespedesDAO huespedesDao;
	
	
	public huespedesControlador() {
		Connection connection = new conexionBase().recuperarConexion();
		this.huespedesDao = new HuespedesDAO(connection);
	}
	
	public void guardar(Huespedes huespedes) {
		this.huespedesDao.guardar(huespedes);
	}
	
	public  List<Huespedes> buscarHuespedes(){
		return this.huespedesDao.buscar();
	}
	
	public  List<Huespedes> buscarHuespedesId(String id){
		return this.huespedesDao.buscarId(id);
	}
	
	public void actualizar(String nombre, String apellido, Date fechaNacimiento, String nacionalidad, String telefono,Integer id_reserva, Integer id) {
		this.huespedesDao.Actualizar(nombre, apellido, fechaNacimiento, nacionalidad, telefono,id_reserva, id);
	}
	 
	public void Eliminar(Integer idReserva) {
		this.huespedesDao.Eliminar(idReserva);
	}
	
	
}
