//
//  ViewController.swift
//  Loto
//
//  Created by Trakya12 on 19.02.2025.
//

import UIKit

class ViewController: UIViewController {

    // 6 adet UILabel için IBOutlet bağlantıları
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Butona basıldığında çalışacak fonksiyon
    @IBAction func generateNumbers(_ sender: UIButton) {
        let numbers = generateLottoNumbers() // Rastgele 6 sayı üret
        updateLabels(with: numbers) // Sayıları etiketlere yaz
    }

    // 1-49 arası 6 farklı rastgele sayı üreten fonksiyon
    func generateLottoNumbers() -> [Int] {
        var numbers = Set<Int>() // Tekrar etmemesi için Set kullanıyoruz
        while numbers.count < 6 {
            numbers.insert(Int.random(in: 1...49))
        }
        return Array(numbers).sorted() // Küçükten büyüğe sırala
    }

    // Sayıları etiketlere güncelleyen fonksiyon
    func updateLabels(with numbers: [Int]) {
        let labels = [label1, label2, label3, label4, label5, label6]
        for (index, number) in numbers.enumerated() {
            labels[index]?.text = "\(number)"
        }
    }
}
