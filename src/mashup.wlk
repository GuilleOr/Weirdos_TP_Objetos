import Cancion.*

class Mushup {
	var canciones = #{ }
	var letraCompleta

	method canciones(cancion) {
		canciones.add(cancion)
	}
	method duracionMash() = canciones.map{ cancion => cancion.duracion() }.max()

	method letraPara() {
		canciones.forEach{ cancion => letraCompleta = letraCompleta + cancion.letra() }
		return letraCompleta.trim()

		}
	}