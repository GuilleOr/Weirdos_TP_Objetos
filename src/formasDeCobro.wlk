object cobroPorCantidadDeArtistas {


	method costo(presentacion, musico){
		
		if(presentacion.sePresentaSolo(musico)){
			return musico.precio()
		} else {
			return musico.precio()/2
		}
		
	}

}

class CobroPorCapacidad {

	var capacidadMinimaDePersonas

	constructor(capacidad){
		capacidadMinimaDePersonas = capacidad
	}

	method capacidadMinimaDePersonas() = capacidadMinimaDePersonas

	method costo(presentacion, musico){
		
		if(presentacion.laCapacidadEsMayorA(self.capacidadMinimaDePersonas())){
			return musico.precio()
		} else {
			return musico.precio() - 100
		}
		
	}

}

class CobroPorExpectativaInflacionaria {

	var fechaMaxima
	var porcentajePostFecha

	constructor(unaFecha, unPorcentaje){
		fechaMaxima = unaFecha
		porcentajePostFecha = unPorcentaje
	}

	method fechaMaxima() = fechaMaxima

	method porcentajePostFecha() = porcentajePostFecha

	method costo(unShow, unMusico){
		
		if(unShow.fechaEsAnteriorA(self.fechaMaxima())){
			return unMusico.precio()
		} else {
			return unMusico.precio() * ( 1 + self.porcentajePostFecha() / 100)
		}
		
	}

}