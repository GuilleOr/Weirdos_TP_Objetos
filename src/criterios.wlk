
object criterioDuracion {

	method comparar(album) = album.sortedBy({ track1 , track2 =>
	track1.duracion() > track2.duracion() }).head()

}

object criterioLetra {

	method comparar(album) = album.sortedBy({ track1 , track2 => track1.letra() >
	track2.letra() }).head()

}

object criterioTitulo {

	method comparar(album) = album.sortedBy({ track1 , track2 => track1.nombre()
	> track2.nombre() }).head()

}
