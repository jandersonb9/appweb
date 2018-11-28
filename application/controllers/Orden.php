<?php
/*
Script que permite manejar el crud de usuarios y que podamos 
aplicar el metodo de encripcion y cuando se este editando
no se reencripte la clave
*/
defined('BASEPATH') OR exit('No direct script access allowed');
class Orden extends CI_Controller {

	public function __construct(){
		parent:: __construct();
		$this->load->library("grocery_CRUD");
		$this->crud=new grocery_CRUD();
		if (!$this->session->userdata("id")) {
			redirect('login');
		}
	}

	public function index()  // por defecto entra al controlador
	{
		$vector['nombre']="JOHN ANDERSON BARRIENTOS";
		$vector['fecha']=date("c");
		$vector['titulo']="hospitalm3";
		$vector['remate']=date("Y");
		$vector["nombreusuario"]=$this->session->userdata("nombrecompleto");
		$vector["fotousuario"]=$this->session->userdata("fotousuario");
		$vector["idusuario"]=$this->session->userdata("id");

		$this->crud->set_table("tblordenes");
		$this->crud->set_subject("Listado ordenes en el sistema");
		$this->crud->set_theme("flexigrid");

		// columnas que deseamos ver
		$this->crud->columns('paciente','paciente','medico','fecha','hora','medicamento1','cantidad1','medicamento2','cantidad2','medicamento3','cantidad3','observaciones');
		// los campos a cargar
		$this->crud->fields('paciente','medico','fecha','hora','medicamento1','cantidad1','medicamento2','cantidad2','medicamento3','cantidad3','observaciones');
		// si se desea asociar el tipo de usuario para que apareza como un seleccionador de otra tabla
		// usamos set_relation
		// agregar la opcion de subir una imagen o documento al sistema
		$this->crud->set_field_upload("foto","assets/imagenes/pacientes/");
		// el campo clave que lo cambie tipo text a tipo password
//		$this->crud->change_field_type('clave','password');
		// el campo usuario lo vuelva email
//		$this->crud->change_field_type('usuario','email');
		// definir campos obligatorios
        $this->crud->required_fields('cedula');
        // definir relacion
        $this->crud->set_relation('medicamento1','tblmedicamentos','medicamento');
        $this->crud->set_relation('paciente','tblpacientes','nombre');
        $this->crud->set_relation('medico','tbldoctor','nombre');
		
		

		// si deseamos antes del proceso de insercion realizar una funcion o proceso, usamos callback_before_insert. Se le deben pasar dos parametros, el primero que indique que campos va a revisar y el segundo la funcion que se debe ejecutar
		//$this->crud->callback_before_insert(array($this,"encriptar"));
		// cuando se este en estado editar, que no muestre el campo de clave
		//if ($this->crud->getState()=="edit") $this->crud->field_type("clave","hidden");

		$tabla=$this->crud->render();

		$vector["tabla"]=$tabla->output;
		$vector["css_files"]=$tabla->css_files;
		$vector["js_files"]=$tabla->js_files;
		$this->load->view('orden',$vector);
	}
//
//	function encriptar($post_array) {
//		// la variable post_array es la que guarda los campos o datos enviados al momento de presionar el boton de guardar. Se comporta de manera similar al $_POST
//		$post_array['clave']=sha1($post_array['clave']);
//		return $post_array;
//	}

}





