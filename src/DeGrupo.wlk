import Musico.*

class DeGrupo inherits Musico {
	var aumento

	constructor(habilidadNumerica, susAlbumes, _aumento) = self (
	habilidadNumerica , susAlbumes ) {
		aumento = _aumento
	}

	override method habilidad() {
		if (self.grupo() != null) {
			return habilidad + aumento
		} return habilidad
	}

	method costo(presentacion) {
		if (presentacion.artistas().contains(self)) {
			if (presentacion.cantidadArtistas() > 1) {
				return 50
			}
		} return 100
	}
	
	override method interpretaBien(cancion, unaPalabra) = super(cancion, unaPalabra) || cancion.duracion() > 300 
	
}