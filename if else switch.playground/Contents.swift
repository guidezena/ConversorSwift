import UIKit

var str = "Hello, playground"

// if e else

var dordecabeca: Bool = false
var humor : String = ""

    if dordecabeca {
        humor = "To boladao"
    }else{
        humor = "To suave hehe"
    }

let numero = 11
    if numero % 2 == 0 {
        print("esse numero e par")
    }else{
        print("Esse numeor e impar")
    }


var temperatura = 18
var clima : String = ""

    if temperatura <= 0{
        clima = "Ta frio pra carao"
    }else if temperatura < 14 {
        clima = "Ta frio"
    }else if temperatura < 21 {
        clima = "Clima agradavel"
    }else if temperatura < 30{
        clima = "um pouco quente"
    }else{
        clima = "Ta muito quente"
    }

let letra = "i"
var tipoletra = ""

    if letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u"{
        tipoletra = "vogal"
    }else{
        tipoletra = "Consoante"
    }
//switch case

switch letra {
    case "a","e","i","o","u":
    tipoletra = "vogal"
    default:
    tipoletra = "Consoante"
}
    //Closed-Hand......Half-Closed

    //... (Closed-Hand)
    //..< (Half-Closed)


var velocidade = 95.0
switch velocidade {
    case 0.0..<20:
        print("Ele ta na primeira marcha")
    case 20.0..<45:
        print("Ele ta na segunda marcha")
    case 45.0..<60:
        print("Ele ta na terceira marcha")
    case 60.0..<95:
        print("Ele ta na quarta marcha")
    case 95.0..<130:
        print("Ele ta na quinta marcha")
    default:
        print("Ta no ponto morto")
}
