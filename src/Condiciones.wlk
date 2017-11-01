import HabilidadRequeridaException.*
import CancionInterpretadaException.*
import CompositorException.*

class CondicionDeHabilidad {

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