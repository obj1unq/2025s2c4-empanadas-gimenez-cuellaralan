//Escribir aqui los objetos
object baigorria { // vende empanadas
  var sueldo = 0
  var empanadasVendidas = 0
  var totalCobrado = 0

  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
    totalCobrado += sueldo
    empanadasVendidas = 0
  }
  method sueldo() {
    return sueldo
  }
    method vender(cantEmpanadas) {
      empanadasVendidas += cantEmpanadas
      sueldo = empanadasVendidas*15
    }

    method totalCobrado() {
      return totalCobrado  
    }

}
object galvan { // sueldo fijo
  var sueldo = 15000

  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
  }
  method sueldo() {
    return sueldo
  }


}

object gimenez {
  var fondo = 300000

  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.sueldo(empleado.sueldo())
  } 

  method fondo() {
    return fondo
  }
}