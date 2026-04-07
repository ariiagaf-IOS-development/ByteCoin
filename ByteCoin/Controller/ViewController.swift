//
//  ViewController.swift
//  ByteCoin
//
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  📚 STUDENT PROJECT NOTES:
//  This is a learning project following the App Brewery's iOS course.
//  Original design and course materials belong to The App Brewery (Angela Yu).
//  Code implementation and Auto Layout practice by Arina Agafonova.
//  Completed as part of iOS development learning journey - February-May 2026.

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coinManager.delegate = self
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        
        let defaultCurrency = coinManager.currencyArray[0]
        coinManager.getCoinPrice(for: defaultCurrency)
    }
}
//MARK: - CoinManagerDelegate
extension ViewController: CoinManagerDelegate {
    func didUpdatePrice(price: String, currency: String) {
            DispatchQueue.main.async {
                self.bitcoinLabel.text = price
                self.currencyLabel.text = currency
            }
    }
    
    func didFailWithError(error: Error) {
            DispatchQueue.main.async {
                self.bitcoinLabel.text = "Error"
            }
            print(error)
    }
}
//MARK: - UIPickerViewDelegate, UIPickerViewDataSource
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: selectedCurrency)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
}
