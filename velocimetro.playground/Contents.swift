//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades : Int{
    case Apagado = 0,  VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
     velocidad = Velocidades(velocidadInicial : .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var velocidadTexto : String = ""
        
        if(velocidad==Velocidades.Apagado){
            velocidad = Velocidades(velocidadInicial : .VelocidadBaja)
            velocidadTexto = "Velocidad baja"
        } else if(velocidad==Velocidades.VelocidadBaja){
            velocidad = Velocidades(velocidadInicial : .VelocidadMedia)
            velocidadTexto = "Velocidad media"
        } else if(velocidad==Velocidades.VelocidadMedia){
            velocidad = Velocidades(velocidadInicial : .VelocidadAlta)
            velocidadTexto = "Velocidad alta"
        } else if(velocidad==Velocidades.VelocidadAlta){
            velocidad = Velocidades(velocidadInicial : .Apagado)
            velocidadTexto = "Apagado"
        }
        return (velocidad.rawValue, velocidadTexto)
    }
}

var auto = Auto()

for i in 1...20 {
    var velocidadActual = auto.cambioDeVelocidad()
    print("\(velocidadActual.actual) \(velocidadActual.velocidadEnCadena)")
}

