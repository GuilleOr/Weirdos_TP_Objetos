
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

//agrego gaston este metodo
	method capacidad() = lugar.capacidad(fecha)
	
	method costo() = self.artistas().sum({ artista => artista.costo(self) }) 


// cambiar lo de las guitarras. tratarlo como boolean
//cambiar la bidireccion (mantener clase grupo ?)
// que la presentacion sepa su capacidad (delegar)
// sacar setters & getters que no se usan
// ver lo de esMiembro()

}