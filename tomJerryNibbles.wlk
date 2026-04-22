object tom {
    var energia = 50

    method comer(raton) {
        energia += 12 + raton.peso()
    }

    method correr(metros) {
        energia -= metros / 2
    }

    method velocidadMaxima() = 5 + energia/10

    method puedeCazar(distancia) = distancia / 2 < energia

    method cazar(raton, distancia) {
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comer(raton)
        }
    }
}


object jerry {
    var edad = 2

    method cumplirAnios() {
        edad += 1
    } 

    method peso() = edad * 20
}


object nibbles {
    method peso() = 35
}


object beto {
    method peso() = 40
}
