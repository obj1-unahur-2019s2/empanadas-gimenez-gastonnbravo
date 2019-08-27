object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var resultado = 0
	 
//resultado 0 en dinero o 0 en dueda
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){ resultado += sueldo}
	
	method gastar(cuanto){ resultado -= cuanto}
	
	method totalDeuda(){return resultado.min(0)}	
	method totalDinero(){return resultado.max(0) }
	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
		totalCobrado += self.sueldo()
		}
	method totalCobrado(){return totalCobrado}
}	

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() }
}
object gimenez2 {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
}
}

//se agrego cobrarSueldo para que no se rompa el method de gimenez2
