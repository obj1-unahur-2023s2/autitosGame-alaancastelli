importar wolok.vm.runtime
/* 
/**
   * Objeto principal del juego Wollok
   */
juego de objetos {

   anular el método inicializar() {
     súper()
    
     self.title("Juego Wollok")
     ancho.propio(5)
     altura.propia(5)
     self.cellSize(50)
     self.ground("tierra.png")
     }
  
   /**
    * Agrega un objeto al tablero para dibujarlo.
    * El objeto debe comprender una propiedad de posición.
    * (implementado mediante un método de referencia o captador).
    *
    * Ejemplo:
    * game.addVisual(pepita) ==> pepita debería tener una propiedad de posición
    */
   método addVisual(posicionable) nativo

   /**
    * Agrega un objeto al tablero para dibujarlo en una posición específica.
    *
    * Ejemplo:
    * game.addVisualIn(pepita, game.origin()) ==> no es necesario que pepita tenga una propiedad de posición
    * juego.addVisualIn(pepita, juego.at(2, 2))
    */
   método addVisualIn(elemento, posición) nativo

  
   /**
    * Agrega un objeto al tablero para dibujarlo. Se puede mover con las teclas de flecha.
    * Ese objeto debe entender una propiedad de posición.
    * (implementado mediante un método de referencia o captador).
    *
    * Ejemplo:
    * game.addVisualCharacter(pepita) ==> pepita debería tener una propiedad de posición
    */
   método addVisualCharacter(posicionable) nativo

   /**
    * Agrega un objeto al tablero para dibujarlo en una posición específica. Se puede mover con las teclas de flecha.
    *
    * Ejemplo:
    * game.addVisualCharacterIn(pepita, game.origin()) ==> no es necesario que pepita tenga una propiedad de posición
    */
   método addVisualCharacterIn(elemento, posición) nativo

   /**
    * Elimina un objeto del tablero para dejar de dibujarlo.
    *
    * Ejemplo:
    * juego.removeVisual(pepita)
    */
   método removeVisual(visual) nativo
  
   /**
    * Verifica si un objeto está actualmente en el tablero.
    *
    * Ejemplo:
    * juego.hasVisual(pepita)
    */
   método hasVisual(visual) nativo

   /**
    * Devuelve todos los objetos visuales agregados al tablero.
    *
    * Ejemplo:
    * juego.allVisuals()
    */
   método allVisuals() nativo

   /**
    * Agrega un bloque que se ejecutará cada vez que se presione una tecla específica
    * @ver teclado.onPressDo()
    */
   método cuandoKeyPressedDo(clave, acción) nativo

   /**
    * Agrega un bloque que se ejecutará mientras el objeto dado colisiona con otro.
    * Dos objetos chocan cuando están en la misma posición.
    *
    * El bloque debe esperar el otro objeto como parámetro.
    *
    * Ejemplo:
    * juego.whenCollideDo(pepita, { comida => pepita.comer(comida) })
    */
   método cuandoCollideDo(visual, acción) nativo

   /**
    * Agrega un bloque que se ejecutará exactamente cuando el objeto dado colisione con otro.
    * Dos objetos chocan cuando están en la misma posición.
    *
    * El bloque debe esperar el otro objeto como parámetro.
    *
    * Ejemplo:
    * game.onCollideDo(pepita, { comida => pepita.comer(comida) })
    */
   método onCollideDo (visual, acción) nativo
  
   /**
    * Agrega un bloque con un nombre específico que se ejecutará cada n milisegundos.
    * Block no espera ningún argumento.
    * Tenga cuidado de no configurarlo con demasiada frecuencia :)
    *
    * Ejemplo:
    * game.onTick(5000, "pepitaMoving", { => pepita.position().x(0.randomUpTo(4)) })
    */
   método onTick(milisegundos, nombre, acción) nativo
  
   /**
    * Agrega un bloque que se ejecutará en n milisegundos.
    * Block no espera ningún argumento.
    *
    * Ejemplo:
    * juego.programación(5000, { => pepita.position().x(0.randomUpTo(4)) })
    */
   método programación (milisegundos, acción) nativo
      
   /**
    * Eliminar un evento de tick creado con el mensaje onTick
    *
    * Ejemplo:
    * juego.removeTickEvent("pepitaMoving")
    */
   método removeTickEvent(nombre) nativo
  
   /**
    * Devuelve todos los objetos en una posición determinada.
    *
    * Ejemplo:
    * juego.getObjectsIn(juego.origen())
    */
   método getObjectsIn(posición) nativo

   /**
    * Dibuja un globo de diálogo con el mensaje dado en la posición del objeto visual dada.
    *
    * Ejemplo:
    * juego.say(pepita, "¡hola!")
    */
   método decir (visual, mensaje) nativo

   /**
    * Elimina todos los objetos visuales a bordo y configuraciones (colisionadores, claves, etc.).
    */
   método clear() nativo

   /**
    * Devuelve todos los objetos que están en la misma posición que el objeto dado.
    */
   método colisionadores (visual) nativo

   /**
    * Devuelve el objeto único que está en la misma posición que el objeto dado.
    */
   método UniqueCollider(visual) = self.colliders(visual).uniqueElement()

   /**
    * Deja de renderizar el tablero y termina el juego.
    */
   método stop() nativo
  
   /**
    * Comienza a renderizar el tablero en una nueva ventana.
    */
   inicio del método() {
     self.doStart(tiempo de ejecución.isInteractive())
   }
  
   /**
    * Devuelve una posición para unas coordenadas dadas.
    */
   método en(x, y) {
     devolver nueva Posición(x = x, y = y)
   }

   /**
    * Devuelve la posición (0,0).
    */
   método origen() = self.at(0, 0)

   /**
    * Devuelve la posición del tablero central (redondeada hacia abajo).
    */
   centro de método() = self.at(self.width().div(2), self.height().div(2))

   /**
    * Establece el título del juego.
    */
   título del método (título) nativo
   
   
   }