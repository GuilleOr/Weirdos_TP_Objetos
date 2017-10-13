import Album.*

class Musico {
	var habilidad
	var grupo
	var albumes

	method habilidad() = habilidad

	method habilidad(_habilidad) {
		habilidad = _habilidad
	}

	method grupo() = grupo

	method grupo(_grupo) {
		grupo = _grupo
	}

	method albumes() = albumes

	method albumes(_albumes) {
		albumes = _albumes
	}

	method minimalista() {
		return albumes.all({album => album.minimalista()})
	}

	method cualesContienen(_palabra) {
		return albumes.flatMap({album => album.contienen(_palabra)})
	}

	method duracionDeLaObra() {
		return albumes.sum({album => album.duracion()})
	}

	method laPego() {
		return albumes.all({album => album.buenaVenta()})
	}
}