//
//  ViewController.swift
//  emi-learning-task-3.5
//
//  Created by Italo cavalcanti on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var areaAtuacaoTextField: UITextField!
    @IBOutlet weak var statusProfissionalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func receberMaterialButtonPressionado(_ sender: UIButton) {
        exibirAlertaDeConfirmacao()
    }
    
    func exibirAlertaDeConfirmacao() {
        let alerta = UIAlertController(title: "Quase lá", message: "Antes de enviarmos, por favor, revise seus dados:\n\nNome: \(nomeTextField.text!)\nEmail: \(emailTextField.text!)\nÁrea de Atuação: \(areaAtuacaoTextField.text!)\nStatus Profissional: \(statusProfissionalTextField.text!)", preferredStyle: .actionSheet)
        alerta.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: exibirAlertaDeFinalizado))
        alerta.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(alerta, animated: true)
    }
    
    func exibirAlertaDeFinalizado(_ action: UIAlertAction) {
        limparCampos()
        let alerta = UIAlertController(title: "Feito!", message: "Verifique seu email e tenha acesso ao documento.", preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Ok!", style: .cancel))
        self.present(alerta, animated: true)
    }
    
    func limparCampos() {
        nomeTextField.text = ""
        emailTextField.text = ""
        areaAtuacaoTextField.text = ""
        statusProfissionalTextField.text = ""
    }

}

