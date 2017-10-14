import DeGrupo.*

object joaquin inherits DeGrupo {

/* 
method habilidad() {
		if (self.grupo() != null) {
			return 20 + 5
		}
		return 20
	}
BORRAR

*/
	
	method interpretaBien(cancion) = cancion.duracion() > 300

	method costo(presentacion) {
		if (presentacion.artistas().contains(self)) {
			if (presentacion.cantidadArtistas() > 1) {
				return 50
			}
		}
		return 100
	}
}