
object habilidadChecker {

	method chequear(musico) = musico.habilidad() < 70

}

object autoriaChecker{
	method chequear(musico){
		return musico.albumes().flatMap().filter{ cancion => musico.esDeSuAutoria(cancion)} > 1
	}  
}

object interpretacionChecker{
	method chequear(musico, cancion) = musico.interpretaBien(cancion)
}

