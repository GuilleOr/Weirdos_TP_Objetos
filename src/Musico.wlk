import Album.*

class Musico {
	var habilidad
	var grupo = null
	var albumes = #{ }
	var cancionesDeAutor
	var tipo
	var costo
	var tipoCobro

	constructor(habilidadNumerica, susAlbumes) {
		habilidad = habilidadNumerica albumes = susAlbumes
	}	
	method tipo() = tipo
	method tipo(_tipo) {tipo = _tipo}
	method precio(_costo){costo = _costo}
	method precio()  = costo
	method tipoCobro(_tipoCobro) { tipoCobro = _tipoCobro}
	method tipoCobro() = tipoCobro
	method habilidad() = habilidad

	method habilidad(_habilidad) {
		habilidad = _habilidad
	}

	method grupo() = grupo

	method grupo(_grupo) {
		grupo = _grupo
	}

	method abandonarGrupo() {
		grupo = null
	}

	method albumes() = albumes

	method albumes(_albumes) {
		albumes = _albumes
	}

	method agregarAlbum(album) {
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

	method interpretaBien(cancion) = self.esDeSuAutoria(cancion) ||
	self.cumpleCondicionDeHabilidad()
	|| self.tipo().interpretaBien(cancion)

	method esDeSuAutoria(cancion) = self.albumes().any{ album =>
	album.canciones().contains(cancion) }

	method cumpleCondicionDeHabilidad() = self.habilidad() > 60

	//method condicionExtraInterpretacion(cancion)
	
	method bienInterpretadas(canciones) {
		 return canciones.filter{cancion => self.interpretaBien(cancion)}
	}
	
	 }

class Imparero {

	method interpretaBien(cancion) = cancion.duracionImpar()

}

class Palabrero {
	var palabra

	constructor(_palabra) {
		palabra = _palabra
	}

	method palabraDeCancion() = palabra

	method interpretaBien(cancion) = cancion.contiene(palabra)

}

class Larguero {
	var tiempoDeInterpretacion

	constructor(_tiempoDeInterpretacion ) {
		tiempoDeInterpretacion = _tiempoDeInterpretacion 
	}

	method tiempoDeInterpretacion () = tiempoDeInterpretacion 

	method interpretaBien(cancion) = cancion.duracion() > self.tiempoDeInterpretacion ()
	

}