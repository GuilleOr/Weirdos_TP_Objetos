import Musico.*

class DeGrupo inherits Musico {
	var aumento

	override method habilidad() {
		var normal = super()
		if (self.grupo() != null) {
			return normal + aumento
		}
		return normal
	}

	method aumento(_aumento) {
		aumento = _aumento
	}
}