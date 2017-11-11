import representante.*

class Banda {
	var representante
	const miembros = [ ]
	;

	method habilidad() = self.miembros().sum{ integrante =>
	integrante.habilidad() } * 1.1

	method costoPresentacionBanda(presentacion) = self.miembros().sum{ integrante =>
	integrante.tipoCobro().costo(presentacion, integrante) } 

	method costoPresentacion(unShow) = self.costoPresentacionBanda(unShow) +
	self.representante().montoQueCobra()

	method puedeTocarCancion(unaCancion) = self.miembros().all({ integrante =>
	integrante.interpretaBien(unaCancion) })

	method agregarMiembro(musico) {
		if (!self.miembros().contains(musico)) {
		//musico.banda(self)
			self.miembros().add(musico)
		}
	}

	method renuncia(musico) {
		if (miembros.contains(musico)) {
			musico.banda(null)
			miembros.remove(musico)
		}
	}

	method representante() = representante

	method representante(nuevoRepresentante) { representante = nuevoRepresentante
	}

	method miembros() = miembros
}