<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Pacientes extends CI_Controller {
public function __construct(){
parent:: __construct();
$this->load->library("grocery_CRUD");
$this->crud=new grocery_CRUD();
if(!$this->session->userdata("id")){
redirect('login');
}
}
public function index()
{
$vector['nombre']="JOHN ANDERSON BARRIENTOS";
$vector['fecha']=date("c");
$vector['titulo']="hospitalm3";
$vector['remate']=date("Y");
$vector["nombreusuario"]=$this->session->userdata("nombrecompleto");
$vector["fotousuario"]=$this->session->userdata("fotousuario");
$vector["idusuario"]=$this->session->userdata("id");

$this->crud->set_table("tblpacientes");
$this->crud->set_subject("Listado de pacientes en el sistema");
$this->crud->set_theme("flexigrid");
//columnas que deseamos ver

$this->crud->columns('foto','cedula','paciente','apellidos','fecha_nacimiento','telefono','estado_civil','pais','departamento','ciudad','eps','enfermedad','rh','medicamento','observaciones','notas');
$this->crud->fields('foto','cedula','paciente','apellidos','fecha_nacimiento','telefono','pais','estado_civil','departamento','ciudad','eps','enfermedad','rh','medicamento','observaciones','notas');
$this->crud->unique_fields(array('cedula'));
$this->crud->set_relation('pais','tblpais','pais');
$this->crud->set_relation('departamento','tbldepartamento','departamento');
$this->crud->set_relation('ciudad','tblciudad','ciudad');
$this->crud->set_relation('eps','tbleps','eps');
$this->crud->set_relation('rh','tblrh','rh');
$this->crud->set_relation('enfermedad','tbltipoenfermedad','enfermedad');
$this->crud->set_relation('medicamento','tblmedicamentos','medicamento');
$this->crud->set_relation('estado_civil','tblestado_civil','estado_civil');

//agregar la opcion de subir una imagen o documento al sistema
$this->crud->set_field_upload("foto","assets/imagenes/pacientes/");
//definir campos obligatorios
 $this->crud->required_fields('cedula','nombre','apellido','telefono');
$tabla=$this->crud->render();

$vector["tabla"]=$tabla->output;
$vector["css_files"]=$tabla->css_files;
$vector["js_files"]=$tabla->js_files;
$this->load->view('pacientes',$vector);
//var_dump($vector);
}
}
?>








