import Cancion.*

class Mushup inherits Cancion {
	var canciones = #{ }
	var letraCompleta

	override method duracion() = canciones.map{ cancion => cancion.duracion()}.max()

	override method letra() = canciones.forEach{ cancion => letraCompleta = letraCompleta + cancion.letra()
	return letraCompleta.trim()
	}
}