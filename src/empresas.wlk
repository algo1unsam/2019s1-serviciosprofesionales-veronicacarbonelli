import profesionales.*
import solicitantes.*

class Empresa {

	var profesionales = []
	
	var property honorarioReferencia = 2

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

