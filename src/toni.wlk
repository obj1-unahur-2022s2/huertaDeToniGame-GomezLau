import wollok.game.*
import plantas.*

object toni {
	const property image = "toni.png"
	var property position = game.at(3, 3)
	const property siembra = []
	const property cosecha = []
	
	// Pegar acá todo lo que tenían de Toni en la etapa 1
	var monedasDeOro = 0
	
	method sembrarTrigo(){
		if(game.colliders(self).size()>=1){
			game.say(self, "Ya hay algo sembrado")
		}
		else{
		const trigo = new Trigo()
		game.addVisualIn(trigo,self.position())
		self.siembra().add(trigo)
		}
	}
	method sembrarMaiz(){
		if(game.colliders(self).size()>=1){
			game.say(self, "Ya hay algo sembrado")
		}
		else{
		const maiz = new Maiz()
		game.addVisualIn(maiz,self.position())
		self.siembra().add(maiz)
		}
	}
	method sembrarTomaco(){
		if(game.colliders(self).size()>=1){
			game.say(self, "Ya hay algo sembrado")
		}
		else{
		const tomaco = new Tomaco()
		game.addVisualIn(tomaco,self.position())
		self.siembra().add(tomaco)
		}
	}
	
	method regarTodo(){
		self.siembra().forEach({p=>p.regar()})
	}
	method regarActual(){
		game.colliders(self).first().regar()
	}
	
	method cosechar(algo){
		if(not algo.estaLista()){
			game.say(self,"La planta no esta lista")
		}
		else{
		self.cosecha().add(algo)
		self.siembra().remove(algo)
		game.removeVisual(algo)
		}
	}
	method cosecharActual(){
		if(game.colliders(self).isEmpty()){
			game.say(self,"No hay ninguna planta en la celda actual")
		}
		else self.cosechar(game.colliders(self).first())
	}
	method cosecharTodo(){
		self.siembra().forEach({p=>self.cosechar(p)})
	}
	
	method estadoActual(){
		game.say( self,"Tengo " + monedasDeOro + " y me quedan por vender " + self.cosecha().size().toString() + " planta/s") 
	}
	method venderCosecha(){
		monedasDeOro += self.cosecha().size()
		self.cosecha().clear()
	}
}