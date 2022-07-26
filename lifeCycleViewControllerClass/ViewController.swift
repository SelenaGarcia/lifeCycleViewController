//
//  ViewController.swift
//  lifeCycleViewControllerClass
//
//  Created by Selena Belén Garcia Lobo on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {

    let date = String(DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .long))


    @IBAction func onTapped(_ sender: UIButton) {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // se carga una sola vez
        // declaran notificaciones, alertas, request, datos del viewController

        view.backgroundColor = .black

        print(#function + " - black - " + date )

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //datos de internet
        // bd
        // vibrar del celular
        view.backgroundColor = .red
        print(#function + " - red - " + date)


    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //subviews
        //Spinners
        //identeficación facial
        //google analytics
        view.backgroundColor = .blue
        print(#function + " - blue - " + date)


    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // sacar los datos del inicio de sesión
        //limpieza de pantalla
        view.backgroundColor = .white
        print(#function + " - white - " + date)



    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        view.backgroundColor = .gray
        print(#function + " - gray - " + date)


    }
    deinit {
        //limpia memoria, datos, variables
        // se usa para sacar las notificaciones y los oberserved
        view.backgroundColor = .green
        print(#function + " - green - " + date)


    }
    

}

