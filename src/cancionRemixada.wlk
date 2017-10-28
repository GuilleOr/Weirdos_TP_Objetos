import Cancion.*

class CancionRemixada inherits Cancion {

	var cancionOriginal
	
	override method duracion() = cancionOriginal.duracion() * 3
	
	override method letra() = "mueve tu cuelpo baby " + cancionOriginal.letra() + " yeah oh yeah" 
	
	method cancionOriginal(_cancion){
		cancionOriginal = _cancion
	}
	
	method cancionOriginal() = cancionOriginal
}