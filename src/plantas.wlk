

class Maiz {
	var property estaRegado = false
	var property estaLista = false
	
	method regar(){
		self.estaRegado(true)
		self.estaLista(true)
	}
	method image() {
		// Modificar esto para que la imagen dependa del estado.
		if(self.estaRegado()){
			return "maiz_adulto.png"
		}
		else return "maiz_bebe.png"
	}
	
}

// Agregar las demás plantas y completar el Maiz.

class Trigo {
	var property estaRegado = false
	var property estaLista = false
	
	method regar(){
		self.estaRegado(true)
		self.estaLista(true)
	}
	method image() {
		// Modificar esto para que la imagen dependa del estado.
		if(self.estaRegado()){
			return "trigo_0.png"
		}
		else return "trigo_1.png"
	}
}

class Tomaco {
	var property estaRegado = false
	var property estaLista = false
	
	method regar(){
		self.estaRegado(true)
		self.estaLista(true)
	}
	method image() {
		// Modificar esto para que la imagen dependa del estado.
		if(self.estaRegado()){
			return "tomaco_ok.png"
		}
		else return "tomaco_podrido.png"
	}
}