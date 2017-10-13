import Cancion.*

class Album {
	var canciones
	var titulo
	var fecha
	var salieron
	var vendidos

	method vendidos() = vendidos

	method vendidos(_vendidos) {
		vendidos = _vendidos
	}

	method salieron() = salieron

	method salieron(_salieron) {
		salieron = _salieron
	}

	method fecha() = fecha

	method fecha(_fecha) {
		fecha = _fecha
	}

	method titulo() = titulo

	method titulo(_titulo) {
		titulo = _titulo
	}

	method canciones() = canciones

	method canciones(_canciones) {
		canciones = _canciones
	}

	method minimalista() {
		return canciones.all({cancion => cancion.duracion() < 60*3})
	}
	
	method contienen(_palabra) {
		return canciones.map({cancion => cancion.contiene(_palabra)})
	}

	method duracion(){
		return canciones.sum({cancion => cancion.duracion()})
	}

	method laMasLarga() {
		return canciones.max({cancion => cancion.duracion()})
	}

	method buenaVenta() {
		return vendidos > 0.75 * salieron
	}
}