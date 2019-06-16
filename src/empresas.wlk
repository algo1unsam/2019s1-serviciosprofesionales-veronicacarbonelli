import profesionales.*
import solicitantes.*

class Empresa {

	var profesionales = []
	var registroDeTrabajo = []
	var clientes = []
	
	var property honorarioReferencia = 2
	
	method darServicio(solicitante, profesional){
		registroDeTrabajo.add(solicitante)
		if(solicitante.puedeSerAtendida(profesional)){
			profesional.honorariosPorHora()
			clientes.add(solicitante)
		}
		else{
			self.error("El cliente no puede ingresar al listado")
		}
		
	
	}
	method registroDeTrabajo(){
		return registroDeTrabajo
	}
	
	method empresaCuantosClientesTiene(){
		return clientes.size()
	}
	
	method tenesDeClienteA(solicitante){
		return clientes.contains(solicitante)
	}
	

	

	method contratarProfesional(profesional) {
		profesionales.add(profesional)
	}

	method estudiaronEn(unaUniversidad) {
		return profesionales.filter{ profesional => profesional.universidad() == unaUniversidad }.size()
	}

	method profesionalesCaros() {
		return profesionales.filter{ profesional => profesional.honorariosPorHora() > honorarioReferencia }
	}

	method universidadesFormadoras() {
		return profesionales.map{ profesional => profesional.universidad() }.asSet()
	}

	method profesionalMasBarato() {
		return profesionales.min{ profesional => profesional.honorariosPorHora() }
	}

	method genteAcotada() {
		return profesionales.filter{ profesional => profesional.cantidadDeProvinciasDondePuedeTrabajar() <= 3 }
	}

	method puedeSatisfacer(solicitante) {
		return profesionales.any{ profesional => solicitante.puedeSerAtendida(profesional) }
	}

}

