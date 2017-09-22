import estados.*

object gibson {
	var estado = "sana"

	method precio() {
		if (estado.equalsIgnoreCase("sana")) {
			return 15
		} return 5
	}
	
	method tratarMal(){
		estado = "rota"
	}
}