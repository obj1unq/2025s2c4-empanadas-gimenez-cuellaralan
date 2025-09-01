//Escribir aqui los objetos
object baigorria {
  // vende empanadas
  var sueldo = 0
  var empanadasVendidas = 0
  var totalCobrado = 0
  
  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
    totalCobrado += sueldo
    empanadasVendidas = 0
  }
  
  method sueldo() = sueldo
  
  method vender(cantEmpanadas) {
    empanadasVendidas += cantEmpanadas
    sueldo = empanadasVendidas * 15
  }
  
  method totalCobrado() = totalCobrado
}

object galvan {
  // sueldo fijo
  var sueldo = 15000
  var deuda = 0
  var dinero = 0
  
  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
    //dinero = nuevoSueldo - deuda
    self.calcularDinero()
    //self.calcularDeuda()
  }
  
  method calcularDinero() {
    if (deuda > sueldo) {
      dinero = 0
      deuda -= sueldo
    } else {
      dinero = sueldo - deuda
      deuda = 0
    }
  }
  
  method sueldo() = sueldo
  
  method gastar(cuanto) {
    if (dinero == 0) {
      deuda += cuanto
    } else {
      deuda += cuanto - dinero
      dinero = 0
    }
  }
  
  method deuda() = self.abs(deuda)
  
  method dinero() = self.abs(dinero)

  method abs(monto) {
    return if(monto < 0) monto*-1 else monto
  }
}

object gimenez {
  var fondo = 300000
  
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.sueldo(empleado.sueldo())
  }
  
  method fondo() = fondo
}