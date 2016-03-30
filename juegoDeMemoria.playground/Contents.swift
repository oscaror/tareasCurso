//: Playground - noun: a place where people can play

import UIKit


var rango = 0...100

print ("Tarea correspondiente a la semana 2 \nRealizada por Oscar Ortega \n")

//Al no haber quedado claro si cada numero del rango al evaluarse cumpliera con una condicion, se procedio a que cada numero evalue las 4.


for i in rango {
    
    //rango del 30 al 40, msj: viva Swift!!
    if i >= 30 && i <= 40{
        print ("\(i) Viva Swift!!!")
    }
    //Divisible entre 5 y se verifica que la division /0, msj: "Bingo!!!"
    if i % 5 == 0 && i != 0 {
        print("\(i) Bingo!!!")
    }
    // Par, msj: es par!
    if i % 2 == 0{
        print("\(i) es par")
    }
    // impar, msj: es impar
    if i % 2 == 1{
        print ("\(i) es impar")
    }
    
    //fin de la tarea
    
}
