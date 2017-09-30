
object lucia {
	var habilidad = 70
	var grupo 

	method habilidad() {
		if (self.grupo().esMiembro(self)) {
			return habilidad - 20
		}
		return habilidad
	}

	method grupo(_grupo) {
		grupo = _grupo
	}

	method grupo() = grupo

	method serSolista() {
		self.grupo().eliminarIntegrante(self)
	}

	method interpretaBien(cancion) = cancion.letra().toLowerCase().contains("familia")

	method costo(presentacion) {
		if (presentacion.lugar().capacidad(presentacion.fecha()) > 5000) {
			return 500
		}
		return 400
	}
}