import Album.*

class Musico {
	var habilidad
	var grupo = null
	var albumes = #{ }
	var categoria
	var tipoMusico
	
	constructor(_habilidadNumerica, _susAlbumes) {
		habilidad = _habilidadNumerica
		albumes = _susAlbumes
	}


	method esSolista() = self.grupo() == null
	
	method tipoMusico(_tipoMusico){
		tipoMusico = _tipoMusico
	} 

	method tipoMusico() = tipoMusico
	
	method categoria() = categoria
	
	method categoria(_categoria){
		categoria = _categoria
	}
	
	method habilidad() = habilidad

	method habilidad(_habilidad) {
		habilidad = _habilidad
	}

	method grupo() = grupo

	method grupo(_grupo) {
		grupo = _grupo
	}
	
	method abandonarGrupo(){
		grupo = null
	}

	method albumes() = albumes

	method albumes(_albumes) {
		albumes = _albumes
	}
	
	method agregarAlbum(album){
		albumes.add(album)
	}
	
	method tieneGrupo() = self.grupo() != null
	method minimalista() {
		return albumes.all({ album => album.minimalista() })
	}

	method cualesContienen(_palabra) {
		return albumes.flatMap({ album => album.contienen(_palabra) })
	}

	method duracionDeLaObra() {
		return albumes.sum({ album => album.duracion() })
	}

	method laPego() {
		return albumes.all({ album => album.buenaVenta() })
	}
		
	method interpretaBien(cancion) = self.esDeSuAutoria(cancion) || self.cumpleCondicionDeHabilidad() 
								       || self.categoria().interpretaBien(cancion)
	
	method esDeSuAutoria(cancion) = self.albumes().any{ album => album.tieneCancion(cancion)}
	
	method cumpleCondicionDeHabilidad() = self.habilidad() > 60 
	
	method bienInterpretadas(canciones) {
		 return canciones.filter{cancion => self.interpretaBien(cancion)}
	}	
	
	
	
	
	
}