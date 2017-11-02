import HabilidadRequeridaException.*
import CancionInterpretadaException.*
import CompositorException.*

class Condicion{
	
	method ejecutarCondicion(musico){
		if(!(self.getCondicion(musico))){
			throw new Exception("El musico no cumple la condicion impuesta")
		}
	}
	
	method getCondicion(musico)
}

class CondicionDeHabilidad inherits Condicion {

	const habilidadMinima

	constructor(unaHabilidad){
		habilidadMinima = unaHabilidad
	}

	method habilidadMinima() = habilidadMinima

	override method getCondicion(musico) = musico.habilidad() >= self.habilidadMinima()
			
// throw new HabilidadRequeridaException("El musico no cumple con el minimo de habilidad requerido")
		

}

class CondicionDeCancionBienInterpretada inherits Condicion{

	const cancion

	constructor(unaCancion){
		cancion = unaCancion
	}

	method cancion() = cancion

	override method getCondicion(musico)= musico.interpretaBien(self.cancion())
//throw new CancionInterpretadaException("El musico no interpreta bien la cancion requerida")

}

class CondicionDeCompositor inherits Condicion{

//para el caso del luna park es solo una pero el Bonus pide que puedan ser configurables todas las condiciones.
	const cantidadMinimaDeCanciones

	constructor(unaCantidad){
		cantidadMinimaDeCanciones = unaCantidad
	}

	method cantidadMinimaDeCanciones()=cantidadMinimaDeCanciones

	override method getCondicion(musico) = musico.albumes().flatMap({ album => album.canciones() }).filter{ cancion => musico.esDeSuAutoria(cancion)}.size() > self.cantidadMinimaDeCanciones()



//if(not(unMusico.albumes().sum({album => album.canciones().size()}) >= self.cantidadMinimaDeCanciones())){
		
//throw new CompositorException("El musico no cumple con la cantidad minima de canciones compuestas")

}





/* class CondicionDeHabilidad inherits Condicion {

	const habilidadMinima

	constructor(unaHabilidad){
		habilidadMinima = unaHabilidad
	}

	method habilidadMinima() = habilidadMinima

	method ejecutarCondicion(musico){
		if(!(musico.habilidad() >= self.habilidadMinima())){
			throw new HabilidadRequeridaException("El musico no cumple con el minimo de habilidad requerido")
		}
	}

}

class CondicionDeCancionBienInterpretada {

	const cancion

	constructor(unaCancion){
		cancion = unaCancion
	}

	method cancion() = cancion

	method ejecutarCondicion(musico){
		if(!(musico.interpretaBien(self.cancion()))){
			throw new CancionInterpretadaException("El musico no interpreta bien la cancion requerida")
		}
		
	}

}

class CondicionDeCompositor {

//para el caso del luna park es solo una pero el Bonus pide que puedan ser configurables todas las condiciones.
	const cantidadMinimaDeCanciones

	constructor(unaCantidad){
		cantidadMinimaDeCanciones = unaCantidad
	}

	method cantidadMinimaDeCanciones()=cantidadMinimaDeCanciones

	method ejecutarCondicion(musico){
//		if(not(unMusico.albumes().sum({album => album.canciones().size()}) >= self.cantidadMinimaDeCanciones())){
		if(musico.albumes().flatMap({ album => album.canciones() }).filter{ cancion => musico.esDeSuAutoria(cancion)}.size() > self.cantidadMinimaDeCanciones()){
			throw new CompositorException("El musico no cumple con la cantidad minima de canciones compuestas")
		}
		
	}

}

*/