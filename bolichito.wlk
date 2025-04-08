/*------------COLORES------------*/

object rojo {
  method esFuerte() = true
}

object verde {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}

object pardo {
  method esFuerte() = false
}

object naranja {
  method esFuerte() = true 
}

/*------------COLORES------------*/

/*------------MATERIALES------------*/

object cobre {
  method esBrillante() = true 
}

object vidrio {
  method esBrillante() = true 
}

object lino {
  method esBrillante() = false 
}

object madera {
  method esBrillante() = false 
}

object cuero {
  method esBrillante() = false 
}

/*------------MATERIALES------------*/

/*------------OBJETOS------------*/

object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800   
}

object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300   
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000   
}

object muneco {
    var pesoVariable = 10   
  method color() = celeste
  method material() = vidrio
  method peso() = pesoVariable   
}

object placa {
    var pesoVariable = 0   
    var colorVariable = rojo
  method color() = colorVariable
  method material() = cobre
  method peso() = pesoVariable
}

object arito {
  method color() = celeste
  method material() = cobre
  method peso() = 180   
}

object banquito {
    var colorVariable = naranja 
  method color() = colorVariable
  method material() = madera
  method peso() = 1700   
}

object cajita {
    var objetoAdentro = pelota  
  method color() = rojo
  method material() = cobre
  method peso() = 8000 + objetoAdentro.peso()  
}

/*------------OBJETOS------------*/

/*------------PERSONAS------------*/

object rosa {
  method leGusta(unObjeto) = unObjeto.peso() <= 2000  
}

object estefania {
  method leGusta(unObjeto) = unObjeto.color().esFuerte()  
}

object luisa {
  method leGusta(unObjeto) = unObjeto.material().esBrillante() 
}

object juan {
  method leGusta(unObjeto) = !unObjeto.color().esFuerte() || (unObjeto.peso() >= 1200 && unObjeto.peso() <= 1000) 
}

/*------------PERSONAS------------*/

/*------------BOLICHITO------------*/

object bolichito {
  var objetoVidriera = remera
  var objetoMostrador = pelota 

    method esBrillante() = objetoVidriera.esBrillante() && objetoMostrador.esBrillante() 
    method esMonocromatico() = objetoVidriera.color() == objetoMostrador.color()
    method estaEquilibrado() = objetoVidriera.peso() > objetoMostrador.peso()
    method tieneObjetoDeColor(unColor) = objetoVidriera.color() == unColor || objetoMostrador.color() == unColor
    method puedeMejorar() =  !self.estaEquilibrado() || self.esMonocromatico()
    method puedeOfrecerleA(unaPersona) = unaPersona.leGusta(objetoVidriera) || unaPersona.leGusta(objetoMostrador)  
}


/*------------BOLICHITO------------*/


