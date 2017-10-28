
class Cancion {
	var duracion
	var letra
	var nombre
	var autor

	method autor(_autor) {
		autor = _autor
	}

	method autor() = autor

	method nombre(_nombre) {
		nombre = _nombre
	}
	method letra(_letra) {
		letra = _letra
	}

	method letra() = letra

	method duracion(_duracion) {
		duracion = _duracion
	}

	method duracion() = duracion

	method contiene(_palabra) {
		return letra.toLowerCase().contains(_palabra)
	}

	method esCorta() {
		return duracion < ( 60 * 3 )
	}

	method cantidadDePalabras() {
		return letra.size()
	}

	object criterioDuracion {

		method comparar(album) = album.sortedBy({ track1 , track2 =>
		track1.duracion() > track2.duracion() }).head()

	}

	object criterioLetra {

		method comparar(album) = album.sortedBy({ track1 , track2 => track1.letra()
		> track2.letra() }).head()

	}

	object criterioTitulo {

		method comparar(album) = album.sortedBy({ track1 , track2 => track1.nombre()
		> track2.nombre() }).head()

	} }