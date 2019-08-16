//
//  ViewController.swift
//  ProjetoUD
//
//  Created by Usuário Convidado on 16/08/19.
//  Copyright © 2019 Tinuthas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtSaudacao: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doSalvar(_ sender: Any) {
        UserDefaults.standard.set(txtNome.text!, forKey: "nome")
        UserDefaults.standard.set(txtSaudacao.text!, forKey: "saudacao")
        
        let alertController = UIAlertController(title: title, message: "Salvo!", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated:true, completion: nil)
    }
    @IBAction func doMostrar(_ sender: Any) {
        performSegue(withIdentifier: "showSaudacao", sender: nil)
    }
    
}

