
object luisAlberto {
	var guitarra

	method habilidad() {
		
		var precio = 8 * self.guitarra().precio()
		
		if (precio >= 100) {
			return 100
		} 
		
		return precio

	}

	method guitarra() = guitarra
	
	method guitarra(_guitarra){
		guitarra = _guitarra
	}
	
	method interpretaBien(cancion) = true
	
}