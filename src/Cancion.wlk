
class Cancion {
	var duracion
	var letra

	method letra(_letra) {
		letra = _letra
	}

	method letra() = letra

	method duracion(_duracion) {
		duracion = _duracion
	}

	method duracion() = duracion

	method contiene(_palabra) {
		letra.toLowerCase().contains(_palabra)
	}

	method esCorta() {
		return duracion < 60 * 3
	}
}