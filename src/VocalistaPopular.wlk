import Musico.*

class VocalistaPopular inherits Musico {
	var palabra

	constructor(habilidadNumerica, susAlbumes, palabraBien) = self (
	habilidadNumerica , susAlbumes ) {
		palabra = palabraBien
	}
	
	override method habilidad() {
		if (self.grupo() != null) {
			return habilidad - 20
		} return habilidad
	}
	
//	override method interpretaBien(cancion){
//		return cancion.contiene("familia")
//		}

	override method interpretaBien(cancion, unaPalabra) = return super(cancion, unaPalabra) || cancion.contiene(unaPalabra)

	method costo(presentacion) {
		if (presentacion.lugar().capacidad(presentacion.fecha()) > 5000) {
			return 500
		} return 400
	}
} 
