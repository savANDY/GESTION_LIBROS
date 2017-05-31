package eus.zornotza.controlador;

import java.util.ArrayList;
import eus.zornotza.modelo.*;

public class ControladorLibro {
	
	private ModeloLibro modeloLibro;

	public ControladorLibro() {
		super();
		modeloLibro=new ModeloLibro();
	
	}

	public void insertarLibro(String titulo,String autor,int num_pag) throws Exception{
		
		Libro libro=new Libro();
		
		libro.setTitulo(titulo);
		libro.setAutor(autor);
		libro.setNum_pag(num_pag);
		
		try {
			modeloLibro.insertar(libro);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public ArrayList<Libro> seleccionarTodos() throws Exception{
		
		ArrayList<Libro> libros=new ArrayList<Libro>();

		try {
			libros=modeloLibro.seleccionarTodos();
			return(libros);
		} catch (Exception e) {
			throw e;
		}
		
	}
	public void borrarLibro(String titulo) throws Exception{
		
		try {
			
			modeloLibro.borrarLibro(titulo);
		} catch (Exception e) {
			throw e;
		}
	}
public void borrarLibro(int id) throws Exception{
		
		try {
			
			modeloLibro.borrar(id);
		} catch (Exception e) {
			throw e;
		}
	}
	public ArrayList<String> abrirConsultarLibro() throws Exception {
		
		
		ArrayList<String> autores;
		try {
			autores = modeloLibro.seleccionarAutores();
			return autores;
		} catch (Exception e) {
			throw e;
			//JOptionPane.showMessageDialog(null, "ERROR AL SELECCIONAR LIBRO");
		}
	}
	public ArrayList<Libro> seleccionarLibrosPorAutor(String autor) throws Exception {
		ArrayList<Libro> libros=new ArrayList<Libro>();
		try {
			libros=modeloLibro.seleccionarDatosLibroAutor(autor);
			return libros;
		} catch (Exception e) {
			throw e;
			//JOptionPane.showMessageDialog(null, "ERROR AL SELECCIONAR LIBROS");
		}
		
	}
	
	public ModeloLibro getModeloLibro() {
		return modeloLibro;
	}

	public void setModeloLibro(ModeloLibro modeloLibro) {
		this.modeloLibro = modeloLibro;
	}


}
