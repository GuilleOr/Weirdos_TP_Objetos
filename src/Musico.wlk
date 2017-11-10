import Album.*

class Musico {
	var habilidad
	var grupo = null
	var albumes = #{ }
	var cancionesDeAutor
	var categoria
	var tipo
	var costoMusico

	constructor(habilidadNumerica, susAlbumes) {
		habilidad = habilidadNumerica albumes = susAlbumes
	}

	method cuantoCobra() {
		return self.costoMusico()
	}

	method costoMusico(_costo) { costoMusico = _costo }
	method costoMusico() = costoMusico
	method tipo() = tipo
	method tipo(_tipo) { tipo = _tipo }

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
	method categoria() = categoria

	method categoria(_categoria) {
		categoria = _categoria
	}

	method interpretaBien(cancion) = self.esDeSuAutoria(cancion) ||
	self.cumpleCondicionDeHabilidad()
	|| self.categoria().interpretaBien(cancion)

	method esDeSuAutoria(cancion) = self.albumes().any{ album =>
	album.canciones().contains(cancion) }

	method cumpleCondicionDeHabilidad() = self.habilidad() > 60

	method condicionExtraInterpretacion(cancion) method
	bienInterpretadas(canciones) {
		return canciones.filter{ cancion => self.interpretaBien(cancion) }
	}
}

//categorias 

class Imparero {

	method interpretaBien(cancion) = cancion.impar()

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
	var tiempoNecesario

	constructor(_tiempoNecesario) {
		tiempoNecesario = _tiempoNecesario
	}

	method tiempoNecesario() = tiempoNecesario

	method interpretaBien(cancion) = cancion.duracion() > self.tiempoNecesario()

}
