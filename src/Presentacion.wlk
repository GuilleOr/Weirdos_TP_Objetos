
class Presentacion {
	var fecha
	var artistas = [ ]
	var lugar
	var condicionesParaParticipar = [ ]

	method fecha(_fecha) {
		fecha = _fecha
	}

	method lugar(_lugar) {
		lugar = _lugar
	}

	method artistas() = artistas
	method fecha() = fecha
	method lugar() = lugar

	method sumarArtista(artista) {
		self.artistas().add(artista)

	}
	method sumarArtistaCondiciones(artista) {
		if (self.condicionesParaParticipar() != null) {
			self.validarCondiciones(artista)
			self.sumarArtista(artista)
		} else self.sumarArtista(artista)
	}

	method validarCondiciones(artista) {
		condicionesParaParticipar.forEach{ condicion =>
		condicion.ejecutarCondicion(artista) }
	}

	method eliminarArtista(artista) {
		self.artistas().remove(artista)
	}

	method cantidadArtistas() = self.artistas().size()

	method capacidad() = lugar.capacidad(fecha)

	method costo() = self.artistas().sum({ artista => artista.costo(self) })

	method condicionesParaParticipar() = condicionesParaParticipar

	method condicionesParaParticipar(condiciones) {
		condicionesParaParticipar = condiciones
	}

	method cumpleCondiciones(musico) {
		return condicionesParaParticipar.forEach{ condicion =>
		condicion.ejecutarCondicion(musico) }
	}
	method sePresentaSolo(unMusico) = self.unSoloArtista() &&
	self.sePresenta(unMusico)
	
	method magia() = self.artistas().sum{ artista => artista.habilidad() }
	
	method sePresenta(musico) = self.artistas().contains(musico)
	
	method unSoloArtista() {
		return self.cantidadArtistas() == 1
	}
	method laCapacidadEsMayorA(capacidad) = self.lugar().capacidad(self.fecha()) > capacidad
	
	method fechaEsAnteriorA(unaFecha) = unaFecha > self.fecha()
}

class CobroPorCantidadDeArtistas {

	method costo(presentacion, musico) {
		if (presentacion.sePresentaSolo(musico)) {
			return musico.costo()
		} else {
			return musico.costo() / 2
		}
	}
}

class CobroPorCapacidad {
	var capacidadMinimaDePersonas

	constructor(capacidad) {
		capacidadMinimaDePersonas = capacidad
	}

	method capacidadMinimaDePersonas() = capacidadMinimaDePersonas

	method costo(presentacion, musico) {
		if (presentacion.laCapacidadEsMayorA(self.capacidadMinimaDePersonas())) {
			return musico.costo()
		} else {
			return musico.costo() - 100
		}
	}
}

class CobroPorExpectativaInflacionaria {
	var fechaMaxima
	var porcentajePostFecha

	constructor(unaFecha, unPorcentaje) {
		fechaMaxima = unaFecha porcentajePostFecha = unPorcentaje
	}

	method fechaMaxima() = fechaMaxima

	method porcentajePostFecha() = porcentajePostFecha

	method costo(presentacion, musico) {
		if (presentacion.fechaEsAnteriorA(self.fechaMaxima())) {
			return musico.precio()
		} else {
			return musico.precio() * ( 1 + self.porcentajePostFecha() / 100 )
		}
	}
}
