import Musico.*

class DeGrupo {
	
	var aumento
	
	constructor(_aumento){
		aumento = _aumento
	}

	method habilidad(musico) {
		if (musico.grupo() != null) {
			return musico.habilidad() + aumento
		} return musico.habilidad()
	}

	method costo(presentacion) {
		if (presentacion.artistas().contains(self)) {
			if (presentacion.cantidadArtistas() > 1) {
				return 50
			}
		} return 100
	}
	
}