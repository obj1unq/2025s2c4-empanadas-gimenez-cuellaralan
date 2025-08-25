//Escribir aqui los objetos
object baigorria { // vende empanadas
  var sueldo = 0
  //var empanadasVendidas = 0

  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
  }
  method sueldo() {
    return sueldo
  }
    method vender(cantEmpanadas) {
      sueldo += cantEmpanadas*15
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
  } 

  method fondo() {
    return fondo
  }
}