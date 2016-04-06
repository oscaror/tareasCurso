//: Tarea S4. Velocimetro digital


enum Velocidades : Int{ //Se declara la enumeracion del tipo Int con sus casos
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    //Funcion inicializadora de la enumeracion donde a Self se le asigna el valor de velocidadInicial
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
        
    }
}




//Se declara la clase Auto
class Auto {
    
    var velocidad : Velocidades  //instancia del tipo Velocidades
    
    
    init(){   //Funcion init, donde se manda a llamar al inicializador de la enumeracion Velocidades con su correspondiente valor inicial (apagado)
        velocidad = Velocidades (velocidadInicial: .Apagado)
        
    }
    
    //Funcion cambio de velocidad
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var velDigito = 0
        var mensaje = " "
        if velocidad == .Apagado{
            velDigito = 0
            mensaje = "Apagado"
            velocidad = .VelocidadBaja
        }else if velocidad == .VelocidadBaja{
            velDigito = 20
            mensaje = "Velocidad Baja"
            velocidad = .VelocidadMedia
        }else if velocidad == .VelocidadMedia{
            velDigito = 50
            mensaje = "Velocidad media"
            velocidad = .VelocidadAlta
        }else {
            velDigito = 120
            mensaje = "Velocidad alta"
            velocidad = .VelocidadMedia
        }
        
        //De velocidad Alta cambia a velocidad media y de velocidad media a alta, tal como en el ejemplo que se encuentra en las instrucciones de la tarea.
        
            
        
        let resultados = (velDigito, mensaje)
        return resultados
    }//Fin cambioDeVelocidad

}//fin de Auto



//Se crea el objeto de tipo automovil
var automovil = Auto()

//Se comprueba la velocidad inicial en el playground
automovil.velocidad

//Ciclo for que iterara 20 veces la funcion cambioDeVelocidad
for i in 1...20{

let cambiosVelocidad = automovil.cambioDeVelocidad() //Se manda llamar la funcion
print (i,":", cambiosVelocidad.actual,",",cambiosVelocidad.velocidadEnCadena) //Se imprimen los resultados

    
}


//Fin de la tarea
