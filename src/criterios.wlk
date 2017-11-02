import Cancion.*
import Album.*

class Criterio {
	
	
	method comparar(album) = album.canciones().sortedBy(self.getCriterio()).head()
//	method comparar(album) = album.canciones().max{self.getCriterio()}
	
	method getCriterio()
	
}

object criterioDuracion inherits Criterio {

	override method getCriterio() = { track1 , track2 => track1.duracion() > track2.duracion() }
}

object criterioLetra inherits Criterio  {

	override method getCriterio() = { track1 , track2 => track1.letra() > track2.letra() }

}

object criterioTitulo inherits Criterio {

	override method getCriterio() = { track1 , track2 => track1.nombre() > track2.nombre() }

}
