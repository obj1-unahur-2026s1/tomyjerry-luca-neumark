object tom {
    var energia = 50

    method comer(raton) {
        energia += 12 + raton.peso()
    }

    method correr(metros) {
        energia -= metros / 2
    }

    method velocidadMaxima() = energia/10 + 5

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
    const pesoInicial = 40
    var peso = 40

    method ponerseTriste() {
        peso -= 10
    }

    method ponerseFeliz() {
        peso = pesoInicial
    }

    method peso() = peso
}
