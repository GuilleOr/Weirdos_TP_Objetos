
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
		}else self.sumarArtista(artista)
	}
	
	method validarCondiciones(artista){
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
	return	condicionesParaParticipar.forEach{ condicion =>
		condicion.ejecutarCondicion(musico) }
	}
}
