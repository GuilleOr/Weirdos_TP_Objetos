import Cancion.*

class MashUp inherits Cancion {
	var cancion1
	var cancion2
	var duracionMashup
	
	constructor (_cancion1,_cancion2){
		cancion1 = _cancion1
		cancion2 = _cancion2
	}
	
	method cancion1() = cancion1
	method cancion2() = cancion2
	
	method letraMashup() {
		letra = cancion1.letra() + cancion2.letra()
	}
	
	method duracionMashup(){
		if (cancion1.duracion() > cancion2.duracion()){
			duracionMashup = cancion1.duracion()
		}
		else{
			duracionMashup = cancion2.duracion()
		}
	}
}