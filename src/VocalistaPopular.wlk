import Musico.*

class VocalistaPopular inherits Musico {
	var palabra

	constructor(habilidadNumerica, susAlbumes, palabraBien) = self (
	habilidadNumerica , susAlbumes ) {
		palabra = palabraBien
	}
	method habilidadNueva(_habilidad) { habilidad = _habilidad }
	
	override method habilidad() {
		if (self.grupo() != null) {
			return habilidad - 20
		} return habilidad
	}

	override method condicionExtraInterpretacion(cancion) = cancion.contiene(palabra)

	method costo(presentacion) {
		if (presentacion.lugar().capacidad(presentacion.fecha()) > 5000) {
			return 500
		} return 400
	}
} 
