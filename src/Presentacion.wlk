
class Presentacion {
	var fecha
	var artistas = [ ]
	var lugar

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
	
	method eliminarArtista(artista){
		self.artistas().remove(artista)
	}
	
	method cantidadArtistas() = self.artistas().size()

	method costo() = self.artistas().map({artista => artista.costo(self)}).sum()
}