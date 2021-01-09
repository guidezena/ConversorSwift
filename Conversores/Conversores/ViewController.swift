//
//  ViewController.swift
//  Conversores
//
//  Created by Gabriel on 08/01/21.
//  Copyright © 2021 Guilherme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfValue: UITextField!
    @IBOutlet weak var lbResultadoNome: UILabel!
    @IBOutlet weak var lbResultadoValor: UILabel!
    @IBOutlet weak var lbUnit: UILabel!
    @IBOutlet weak var btCelsius: UIButton!
    @IBOutlet weak var btFarenheint: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showNext(_ sender: UIButton) {
        switch lbUnit.text! {
        case "Temperatura":
            lbUnit.text = "Peso"
            btCelsius.setTitle("Kilograma", for: .normal)
            btFarenheint.setTitle("Libra", for: .normal)
            case "Peso":
                lbUnit.text = "Moeda"
                btCelsius.setTitle("Real", for: .normal)
                btFarenheint.setTitle("Dolar", for: .normal)
            case "Moeda":
                lbUnit.text = "Distancia"
                btCelsius.setTitle("Metro", for: .normal)
                btFarenheint.setTitle("Kilometro", for: .normal)
            default:
            lbUnit.text = "Temperatura"
            btCelsius.setTitle("Celsius", for: .normal)
            btFarenheint.setTitle("Farenheit", for: .normal)
            
        }
        convert(nil)
    }
    
    @IBAction func convert(_ sender: UIButton?) {
        if let senderteste = sender{
            if senderteste == btCelsius{
                btFarenheint.alpha = 0.5
            }else{
                btCelsius.alpha = 0.5
            }
            senderteste.alpha = 1.0
        }
        switch lbUnit.text! {
            case "Temperatura":
                calcTemperatura()
            case "Peso":
                calcPeso()
            case "Moeda":
                calcMoeda()
            default:
                calcDistancia()
            
        }
        
    }
    func calcTemperatura(){
        guard let temperatura = Double (tfValue.text!) else{return}
        if btCelsius.alpha == 1.0{
            lbResultadoNome.text = "Farenheint"
            lbResultadoValor.text = String ((temperatura * 1.8) + 32.0)
        }else{
            lbResultadoNome.text = "Celsius"
            lbResultadoValor.text = String ((temperatura - 32.0) / 1.8)
        }
    }
    func calcPeso(){
        guard let peso = Double (tfValue.text!) else{return}
        if btCelsius.alpha == 1.0{
            lbResultadoNome.text = "Libra"
            lbResultadoValor.text = String (peso / 2.2046)
        }else{
            lbResultadoNome.text = "Kilograma"
            lbResultadoValor.text = String (peso * 2.2046)
        }
    }
    func calcMoeda(){
        guard let moeda = Double (tfValue.text!) else{return}
        if btCelsius.alpha == 1.0{
            lbResultadoNome.text = "Dolar"
            lbResultadoValor.text = String (moeda / 3.5)
        }else{
            lbResultadoNome.text = "Real"
            lbResultadoValor.text = String (moeda * 3.5)
        }
        
    }
    func calcDistancia(){
        guard let distancia = Double (tfValue.text!) else{return}
        if btCelsius.alpha == 1.0{
            lbResultadoNome.text = "Kilometros"
            lbResultadoValor.text = String (distancia / 1000)
        }else{
            lbResultadoNome.text = "Metros"
            lbResultadoValor.text = String (distancia * 1000)
        }
        
    }

}

