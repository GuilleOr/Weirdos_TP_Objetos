import Musico.*

object vocalistaPopular {
	
	method habilidad(musico) {
		if (musico.grupo() != null) {
			return musico.habilidad() - 20
		} return musico.habilidad()
	}

	method costo(presentacion) {
		if (presentacion.lugar().capacidad(presentacion.fecha()) > 5000) {
			return 500
		} return 400
	}
} 
