import Musico.*
import estados.*

object luisAlberto inherits Musico ( 0 , #{}) {
	var guitarra

	override method habilidad() {
		var precio = 8 * self.guitarra().precio()

		if (precio >= 100) {
			return 100
		} return precio
	}

	method guitarra() = guitarra

	method guitarra(_guitarra) {
		guitarra = _guitarra
	}

	method costo(presentacion) {
		if (presentacion.fecha().month() > 9) {
			return 1200
		} return 1000
	}
	
	override method interpretaBien(cancion) = true 
	//override method condicionExtraInterpretacion(cancion) { }
}
