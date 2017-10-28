import Album.*

class Musico {
	var habilidad
	var grupo = null
	var albumes = #{ }
	var nombre

	constructor(habilidadNumerica, susAlbumes,_nombre) {
		habilidad = habilidadNumerica albumes = susAlbumes nombre = _nombre
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

	method esSolista() = self.grupo() == null
	
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
	
	method nombre() = nombre
	
	method interpretaBien(cancion) {
		
		return cancion.any{( )}
		return cancion.autor() == self.nombre() 
	}
	
	
}