
object joaquin {
	var grupo 

	method habilidad() {
		if (self.grupo() != null) {
			return 20 + 5
		} return 20
	}

	method grupo(_grupo) {
		grupo = _grupo
	}

	method grupo() = grupo

	method serSolista() {
		self.grupo().eliminarIntegrante(self)
		grupo = null
	}

	method interpretaBien(cancion) = cancion.duracion() > 300

	method costo(presentacion) {
		if (presentacion.artistas().contains(self)) {
			if (presentacion.cantidadArtistas() > 1) {
				return 50
			}
		} return 100
	}
}