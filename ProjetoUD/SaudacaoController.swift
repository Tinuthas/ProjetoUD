//
//  SaudacaoController.swift
//  ProjetoUD
//
//  Created by Usuário Convidado on 16/08/19.
//  Copyright © 2019 Tinuthas. All rights reserved.
//

import UIKit

class SaudacaoController: UIViewController {

    @IBOutlet weak var lbSaudacao: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nome = UserDefaults.standard.string(forKey: "nome") ?? "nome"
        let sds = UserDefaults.standard.string(forKey: "saudacao") ?? "saudacao"

        lbSaudacao.text = "\(sds) \(nome)"
    }
    
    
    
    

}
