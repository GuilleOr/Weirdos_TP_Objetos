import Musico.*

class VocalistaPopular inherits Musico{
	var palabra

	method palabra(_palabra) {
		palabra = _palabra
	}

	method interpretaBien(cancion) = cancion.contiene(palabra)
}