import toni.*
import wollok.game.*

object pachamama {
	method image() {
		return "pachamama-agradecida.png"
	}
	
	method fumigar(){
		
	}
	
	method llover(){
		toni.regarTodo()
		game.say(self,"Te riego todo")
	}
}
