
class Grupo {
	var nombre
	var integrantes = [ ]

	method integrantes() = integrantes

	method eliminarIntegrante(musico) {
		self.integrantes().remove(musico)
	}

	method agregarIntegrante(musico) {
		self.integrantes().add(musico)
	}
	
	method esMiembro(musico){
		return integrantes.contains(musico)
	}
	
	method nombre(_nombre){
		nombre = _nombre
	}
}