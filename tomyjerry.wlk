object tom {
	
	var energia = 50		// Tom comienza con 50 de energía


	method comer(raton) {
		
		energia += 12 + raton.peso()
	}
	
	method correr(distancia){
		//Completar!
		energia -= distancia / 2
	}
	
	method velocidadMaxima()  {
		
		 return (5 + energia / 10)
	}
	
	
	//Parte 2
	method energiaQueGasta(distancia) {
		return distancia / 2
	}

	method energiaQueAporta(raton) {
		return 12 + raton.peso()
	}


	method puedeComer(distancia){
				
		return self.energiaQueGasta(distancia) < energia

	}

	method convieneComer(distancia,raton){
		return (self.energiaQueGasta(distancia) < self.energiaQueAporta(raton))
	}

	method quiereComer(raton, distancia) {
        return self.puedeComer(distancia) && self.convieneComer(distancia,raton) //((distancia / 2) < (12 + raton.peso()))
    }
}



object jerry {
	
	var edad = 2

	method peso() {
        return edad * 20
    }

	method cumplirAnios() {
        edad += 1
    }
}

object nibbles {
	
	method peso() {
        return 35
    }
}


