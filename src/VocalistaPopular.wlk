import Musico.*

class VocalistaPopular inherits Musico{
	var palabra
	
/* constructor(palabraBien){
		
		palabra = palabraBien
	}
	
	*/

	method palabra(_palabra) {
		palabra = _palabra
	}

	method interpretaBien(cancion) = cancion.contiene(palabra)
}