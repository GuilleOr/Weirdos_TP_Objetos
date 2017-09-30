import Grupo.*

object pimpinela {

	var integrantes = []

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
}