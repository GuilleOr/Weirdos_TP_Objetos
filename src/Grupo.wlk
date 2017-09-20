
class Grupo {
	var nombre
	var integrantes = [ ]

	method integrantes() = integrantes

	method abandonarGrupo(musico) {
		self.integrantes().remove(musico)
	}

	method unirseAGrupo(musico) {
		self.integrantes().add(musico)
	}
}