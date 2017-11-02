import Cancion.*

class Mushup inherits Cancion {
	var canciones = #{ }
	var letraCompleta

	method canciones(cancion){
		canciones.add(cancion)
	}
	override method duracion() = canciones.map{ cancion => cancion.duracion()}.max()

	override method letra() = canciones.forEach{ cancion => letraCompleta = letraCompleta + cancion.letra()
	return letraCompleta.trim()
	}
}