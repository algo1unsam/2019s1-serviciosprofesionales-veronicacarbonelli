import profesionales.*
import empresas.*



class Persona {

	var property pciaEnQueVive

	method puedeSerAtendida(profesional) {
		return profesional.provinciasDondePuedeTrabajar().contains(pciaEnQueVive)
	}

}

class Institucion {

	var universidadesQueReconoce = []

	method puedeSerAtendida(profesional) {
		return universidadesQueReconoce.contains(profesional.universidad())
	}

}

