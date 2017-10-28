import Cancion.*

class CancionRemixada inherits Cancion{
	
	override method duracion(){
		return duracion * 3
	} 
	
	override method letra(_letra){
		letra = "mueve tu cuelpo " + _letra + " yeah oh yeah"
	}

}