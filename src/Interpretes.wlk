import Cancion.*

class Imparero {

	method interpretaBien(cancion) = cancion.impar()

}

class Palabrero {
	var palabra

	constructor(_palabra) {
		palabra = _palabra
	}

	method palabraDeCancion() = palabra

	method interpretaBien(cancion) = cancion.contiene(palabra)

}

class Larguero {
	var tiempoNecesario

	constructor(_tiempoNecesario) {
		tiempoNecesario = _tiempoNecesario
	}

	method tiempoNecesario() = tiempoNecesario

	method interpretaBien(cancion) = cancion.duracion() > self.tiempoNecesario()

}