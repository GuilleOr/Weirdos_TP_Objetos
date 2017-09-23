
object joaquin {
	var habilidad = 20
	var grupo

	method habilidad() {
		if (self.grupo().esMiembro(self)) {
			return habilidad + 5
		} return habilidad
	}

	method grupo(_grupo) {
		grupo = _grupo
	}

	method grupo() = grupo

	method serSolista() {
		self.grupo().eliminarIntegrante(self)
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