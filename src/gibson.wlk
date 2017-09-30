
object gibson {
	var sana = true

	method precio() {
		if (sana) {
			return 15
		} return 5
	}

	method tratarMal(){
		sana = false
	}
}
