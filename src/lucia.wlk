import VocalistaPopular.*

object lucia inherits VocalistaPopular {
	var habilidad = 70

override method habilidad() {
		if (self.grupo().esMiembro(self)) {
			return habilidad - 20
		}
		return habilidad
	}
 

/* method interpretaBien(cancion) = cancion.letra().toLowerCase().contains("familia") BORRAR */	

	method costo(presentacion) {
		if (presentacion.lugar().capacidad(presentacion.fecha()) > 5000) {
			return 500
		}
		return 400
	}
}

