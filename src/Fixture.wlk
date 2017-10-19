import luisAlberto.*
import fender.*
import gibson.*
import Cancion.*
import Presentacion.*
import lunaPark.*
import laTrastienda.*
import pimpinela.*
import DeGrupo.*
import VocalistaPopular.*



object init {

	method cancionCisne() {
		var cancionCisne = new Cancion()
		cancionCisne.duracion(312)
		cancionCisne.letra("Hoy el viento se abrio quedo vacio el aire una vez mas y el manantial broto y nadie esta aqui
		 y puedo ver que solo estallan las hojas al brillar")
		return cancionCisne
	}

	method cancionLaFamilia() {
		var cancionLaFamilia = new Cancion()
		cancionLaFamilia.duracion(264)
		cancionLaFamilia.letra("Quiero brindar por mi gente sencilla, por el amor brindo por la familia")
		return cancionLaFamilia
	}

	method presentacionLunaPark() {
		var presentacionLuna = new Presentacion()
		presentacionLuna.lugar(lunaPark)
		presentacionLuna.sumarArtista(joaquin)
		presentacionLuna.sumarArtista(lucia)
		presentacionLuna.sumarArtista(luisAlberto)
		presentacionLuna.fecha(new Date(20, 04, 2017))
		return presentacionLuna
	}

	method presentacionLaTrastienda() {
		var presentacionLaTrastienda = new Presentacion()
		presentacionLaTrastienda.lugar(laTrastienda)
		presentacionLaTrastienda.sumarArtista(joaquin)
		presentacionLaTrastienda.sumarArtista(lucia)
		presentacionLaTrastienda.sumarArtista(luisAlberto)
		presentacionLaTrastienda.fecha(new Date(15, 11, 2017))
		return presentacionLaTrastienda
	}
}