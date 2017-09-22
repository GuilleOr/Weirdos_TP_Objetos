
object lucia {

	var habilidad = 70
	var grupo
	var lala = "lalopondio"
			
	method habilidad(){
		if (self.grupo().esMiembro(self)) {
			return habilidad -20
		} return habilidad
	}
		
	method grupo(_grupo){
		grupo = _grupo
	}
	
	method grupo() = grupo

	method serSolista() {
		self.grupo().eliminarIntegrante(self)
	}

	method interpretaBien(cancion) = cancion.letra().contains("familia")
		
}