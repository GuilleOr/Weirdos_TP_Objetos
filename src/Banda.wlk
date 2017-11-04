import Representante.*
class Banda {
	
	var representante
	const miembros = [];
	
	method habilidad() = self.miembros().sum {integrante => integrante.decimeTuHabilidad()} * 1.1
	
	method costoPresentacionBanda(unShow) = self.miembros().sum {integrante=>integrante.precioPorTocarEn(unShow)}
	
	method costoPresentacion(unShow) = self.costoPresentacionBanda(unShow) + self.representante().montoQueCobra()
	
	method puedeTocarCancion(unaCancion) = self.miembros().all({integrante => integrante.interpretaBien(unaCancion)})

	
	method agregarMiembroALaBanda(musico){
		if(!miembros.contains(musico)){
			musico.banda(self)
			miembros.add(musico)
		}
	}
	
	method renuncia(musico){
		if(miembros.contains(musico)){
			musico.banda(null)
			miembros.remove(musico)
		}
	}
	
	method representante()=representante
	
	method representante(nuevoRepresentante){representante=nuevoRepresentante}

	method miembros() = miembros
	
}
