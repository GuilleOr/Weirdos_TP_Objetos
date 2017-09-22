
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
}