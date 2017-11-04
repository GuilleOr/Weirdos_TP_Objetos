
class Presentacion {
	var fecha
	var artistas = [ ]
	var lugar
	var condicionesParaParticipar = []

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
		if(self.cumpleCondiciones(artista)){
			self.artistas().add(artista)
		}

	}
	
	method sePresentaSolo(unMusico) = self.unSoloArtista() && self.sePresenta(unMusico)
	
	method capacidadEsMayorA(capacidad){
		
	}
	
	method laCapacidadEsMayorA(capacidad) = self.lugar().capacidad(self.fecha()) > capacidad
	
	method fechaEsAnteriorA(unaFecha) = unaFecha > self.fecha() 

	method eliminarArtista(artista){
		self.artistas().remove(artista)
	}

	method cantidadArtistas() = self.artistas().size()
	
	method unSoloArtista(){
		return self.cantidadArtistas() == 1
	}
	
	method sePresenta(musico) = self.artistas().contains(musico)

	method capacidad() = lugar.capacidad(fecha)

	method costo() = self.artistas().sum({ artista => artista.costo(self) })
	
	method condicionesParaParticipar() = condicionesParaParticipar
	
	method condicionesParaParticipar(condiciones){
		condicionesParaParticipar = condiciones
	}
	
	method cumpleCondiciones(musico){
		return condicionesParaParticipar.forEach { condicion => condicion.ejecutarCondicion(musico) }
	}
	
	method magia() = self.artistas().sum{artista => artista.habilidad()}
	
	

	
}
