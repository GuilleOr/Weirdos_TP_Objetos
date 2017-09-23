
object laTrastienda {
	
	var capacidadPB = 400
	var capacidad1Piso = 300
	
	method capacidad(fecha){
		if(fecha.dayOfWeek() == 6){
			return capacidadPB + capacidad1Piso
		}
		return capacidadPB
	}
	
	


}