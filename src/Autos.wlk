object corsa {
	var position 
	method image() ="autitoAzul.png"
	method position(unaPosicion){
		position = unaPosicion 
	}
	method arriba(){
		position = position.up(1)
	}
	method abajo(){
		position = position.down(1)
	}
	method derecha(){
		position = position.right(1)
	}
	method izquierda(){
		position = position.left(1)
	}
	method position() = position
		
}
object polo {
	var position 
	method image() ="autitoRojo.png"
	method position(unaPosicion){
		position = unaPosicion 
	}
	method position() = position
		
}
object swift {
	var position 
	method image() ="autitoVerde.png"
	method position(unaPosicion){
		position = unaPosicion 
	}
	method position() = position
		
}