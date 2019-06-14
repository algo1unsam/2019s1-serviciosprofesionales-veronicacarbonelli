
class Profesional {    //clase agregada por mi

	method provinciasDondePuedeTrabajar()

	method honorariosPorHora()

	method cantidadDeProvinciasDondePuedeTrabajar() {
		return self.provinciasDondePuedeTrabajar().size()
	}

}
// esta clase está completa, no necesita nada más
class ProfesionalAsociado inherits Profesional {

	var property universidad

	override method provinciasDondePuedeTrabajar() {
		return #{ "Entre Ríos", "Corrientes", "Santa Fe" }
	}

	override method honorariosPorHora() {
		return 3000 // //
	}

}

// a esta clase le faltan métodos
class ProfesionalVinculado inherits Profesional {

	var property universidad

	override method provinciasDondePuedeTrabajar() {
		return universidad.provincia()
	}

	override method honorariosPorHora() {
		return universidad.honorariosPorHoraRecomendado()
	}
	
	

}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre inherits Profesional {

	var property universidad
	var honorarios
	var provincias = []

	override method honorariosPorHora() {
		return honorarios
	}

	override method provinciasDondePuedeTrabajar() {
		return provincias
	}

}

class Universidad {

	var property provincia = null
	var property honorariosPorHoraRecomendado = null
	
	
	
}

