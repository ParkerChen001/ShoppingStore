//
//  ViewController.swift
//  ShoppingStore
//
//  Created by Parker Chen on 2021/3/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var productScrollView: UIScrollView!
    @IBOutlet weak var button01: UIButton!
    @IBOutlet weak var button02: UIButton!
    @IBOutlet weak var productImage00: UIImageView!
    @IBOutlet weak var productImage01: UIImageView!
    @IBOutlet weak var productImage02: UIImageView!
    @IBOutlet weak var productImage03: UIImageView!
    @IBOutlet weak var productImage04: UIImageView!
    @IBOutlet weak var productQty00: UILabel!
    @IBOutlet weak var productQty01: UILabel!
    @IBOutlet weak var productQty02: UILabel!
    @IBOutlet weak var productQty03: UILabel!
    @IBOutlet weak var productQty04: UILabel!
    @IBOutlet weak var stepper00: UIStepper!
    @IBOutlet weak var stepper01: UIStepper!
    @IBOutlet weak var stepper02: UIStepper!
    @IBOutlet weak var stepper03: UIStepper!
    @IBOutlet weak var stepper04: UIStepper!
    @IBOutlet weak var textStepper00: UILabel!
    @IBOutlet weak var textStepper01: UILabel!
    @IBOutlet weak var textStepper02: UILabel!
    @IBOutlet weak var textStepper03: UILabel!
    @IBOutlet weak var textStepper04: UILabel!
    @IBOutlet weak var nameLable00: UILabel!
    @IBOutlet weak var nameLable01: UILabel!
    @IBOutlet weak var nameLable02: UILabel!
    @IBOutlet weak var nameLable03: UILabel!
    @IBOutlet weak var nameLable04: UILabel!
    @IBOutlet weak var priceLable00: UILabel!
    @IBOutlet weak var priceLable01: UILabel!
    @IBOutlet weak var priceLable02: UILabel!
    @IBOutlet weak var priceLable03: UILabel!
    @IBOutlet weak var priceLable04: UILabel!
    @IBOutlet weak var sumLable: UILabel!
    @IBOutlet weak var seriesLable: UILabel!
    
    let productKindQty = 2  //分類數量
    let productShowQty = 5  //展示數量
    //var productQtyArray : [[Int]] = []
    //var productQtyArray = Array(repeating: Array(repeating: 0, count: 5), count: 2)
    let productNameArray = ["Rapunzel", "Jasmine", "Alice", "Belle", "Ariel", "Tanjiro", "Nezuko", "Zenitsu", "Giyu", "Shinobu"]
    let productPriceArray = [800, 600, 640, 720, 560, 650, 620, 750, 680, 550]
    let seriesProductArray = ["Disney Princess", "Demon Slayer"]
    var whichButton : String = ""
    var qtyStepperArray = Array(repeating: 0, count: 10)
    var sum = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        whichButton = "disneyDoll"
        //print("tip006:\(qtyStepperArray.count)")
        
        seriesLable.text = seriesProductArray[0]
        
        nameLable00.text = productNameArray[0]
        nameLable01.text = productNameArray[1]
        nameLable02.text = productNameArray[2]
        nameLable03.text = productNameArray[3]
        nameLable04.text = productNameArray[4]
        
        priceLable00.text = "💰" + String(productPriceArray[0])
        priceLable01.text = "💰" + String(productPriceArray[1])
        priceLable02.text = "💰" + String(productPriceArray[2])
        priceLable03.text = "💰" + String(productPriceArray[3])
        priceLable04.text = "💰" + String(productPriceArray[4])
        
        textStepper00.text = "Qty : \(qtyStepperArray[0])"
        textStepper01.text = "Qty : \(qtyStepperArray[1])"
        textStepper02.text = "Qty : \(qtyStepperArray[2])"
        textStepper03.text = "Qty : \(qtyStepperArray[3])"
        textStepper04.text = "Qty : \(qtyStepperArray[4])"
    }

    @IBAction func selectKindButton(_ sender: UIButton) {
        if sender == button01{
            //print("tip001: button01")
            
            whichButton = "disneyDoll"
            
            seriesLable.text = seriesProductArray[0]
            
            productImage00.image = UIImage(named: "girldoll_001")
            productImage01.image = UIImage(named: "girldoll_002")
            productImage02.image = UIImage(named: "girldoll_003")
            productImage03.image = UIImage(named: "girldoll_004")
            productImage04.image = UIImage(named: "girldoll_005")
            
            stepper00.value = Double(qtyStepperArray[0])
            stepper01.value = Double(qtyStepperArray[1])
            stepper02.value = Double(qtyStepperArray[2])
            stepper03.value = Double(qtyStepperArray[3])
            stepper04.value = Double(qtyStepperArray[4])
            
            textStepper00.text = "Qty : \(qtyStepperArray[0])"
            textStepper01.text = "Qty : \(qtyStepperArray[1])"
            textStepper02.text = "Qty : \(qtyStepperArray[2])"
            textStepper03.text = "Qty : \(qtyStepperArray[3])"
            textStepper04.text = "Qty : \(qtyStepperArray[4])"
            
            nameLable00.text = productNameArray[0]
            nameLable01.text = productNameArray[1]
            nameLable02.text = productNameArray[2]
            nameLable03.text = productNameArray[3]
            nameLable04.text = productNameArray[4]
            
            priceLable00.text = "💰" + String(productPriceArray[0])
            priceLable01.text = "💰" + String(productPriceArray[1])
            priceLable02.text = "💰" + String(productPriceArray[2])
            priceLable03.text = "💰" + String(productPriceArray[3])
            priceLable04.text = "💰" + String(productPriceArray[4])
            
        } else if sender == button02{
            //print("tip001: button02")
            
            whichButton = "demSlyDoll"
            
            seriesLable.text = seriesProductArray[1]
            
            productImage00.image = UIImage(named: "ghostdie_001")
            productImage01.image = UIImage(named: "ghostdie_002")
            productImage02.image = UIImage(named: "ghostdie_003")
            productImage03.image = UIImage(named: "ghostdie_004")
            productImage04.image = UIImage(named: "ghostdie_005")
            
            stepper00.value = Double(qtyStepperArray[5])
            stepper01.value = Double(qtyStepperArray[6])
            stepper02.value = Double(qtyStepperArray[7])
            stepper03.value = Double(qtyStepperArray[8])
            stepper04.value = Double(qtyStepperArray[9])
            
            textStepper00.text = "Qty : \(qtyStepperArray[5])"
            textStepper01.text = "Qty : \(qtyStepperArray[6])"
            textStepper02.text = "Qty : \(qtyStepperArray[7])"
            textStepper03.text = "Qty : \(qtyStepperArray[8])"
            textStepper04.text = "Qty : \(qtyStepperArray[9])"
            
            nameLable00.text = productNameArray[5]
            nameLable01.text = productNameArray[6]
            nameLable02.text = productNameArray[7]
            nameLable03.text = productNameArray[8]
            nameLable04.text = productNameArray[9]
            
            priceLable00.text = "💰" + String(productPriceArray[5])
            priceLable01.text = "💰" + String(productPriceArray[6])
            priceLable02.text = "💰" + String(productPriceArray[7])
            priceLable03.text = "💰" + String(productPriceArray[8])
            priceLable04.text = "💰" + String(productPriceArray[9])
        }
        
        //when button change need to scroll view back to left (begin) side
        productScrollView.setContentOffset(CGPoint.zero, animated: true)
    }
    
    @IBAction func changeQtyStepper(_ sender: UIStepper) {
        
        //print("tip002:btn:\(whichButton),stepper:\(sender.tag),val:\(Int(sender.value))")
        
        switch whichButton{
        case "disneyDoll":
            switch sender.tag{
            case 0:
                qtyStepperArray[0] = Int(sender.value)
                textStepper00.text = "Qty : \(qtyStepperArray[0])"
            case 1:
                qtyStepperArray[1] = Int(sender.value)
                textStepper01.text = "Qty : \(qtyStepperArray[1])"
            case 2:
                qtyStepperArray[2] = Int(sender.value)
                textStepper02.text = "Qty : \(qtyStepperArray[2])"
            case 3:
                qtyStepperArray[3] = Int(sender.value)
                textStepper03.text = "Qty : \(qtyStepperArray[3])"
            case 4:
                qtyStepperArray[4] = Int(sender.value)
                textStepper04.text = "Qty : \(qtyStepperArray[4])"
            default:
                print("tip003: no this tag")
            }
            
        case "demSlyDoll":
            switch sender.tag{
            case 0:
                qtyStepperArray[5] = Int(sender.value)
                textStepper00.text = "Qty : \(qtyStepperArray[5])"
            case 1:
                qtyStepperArray[6] = Int(sender.value)
                textStepper01.text = "Qty : \(qtyStepperArray[6])"
            case 2:
                qtyStepperArray[7] = Int(sender.value)
                textStepper02.text = "Qty : \(qtyStepperArray[7])"
            case 3:
                qtyStepperArray[8] = Int(sender.value)
                textStepper03.text = "Qty : \(qtyStepperArray[8])"
            case 4:
                qtyStepperArray[9] = Int(sender.value)
                textStepper04.text = "Qty : \(qtyStepperArray[9])"
            default:
                print("tip003: no this tag")
            }
            
        default :
            print("d")
        }

        calculate()
        
    }
    
    func calculate() {
        sum = 0
        for i in 0 ..< qtyStepperArray.count {
            sum += productPriceArray[i]  * qtyStepperArray[i]
            //print("tip005: \(i),sum=\(sum), \(productPriceArray[i]) * \(qtyStepperArray[i])")
        }
        sumLable.text = "\(sum)"
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        qtyStepperArray = Array(repeating: 0, count: 10)
        
        whichButton = "disneyDoll"
        
        productImage00.image = UIImage(named: "girldoll_001")
        productImage01.image = UIImage(named: "girldoll_002")
        productImage02.image = UIImage(named: "girldoll_003")
        productImage03.image = UIImage(named: "girldoll_004")
        productImage04.image = UIImage(named: "girldoll_005")
        
        stepper00.value = Double(qtyStepperArray[0])
        stepper01.value = Double(qtyStepperArray[1])
        stepper02.value = Double(qtyStepperArray[2])
        stepper03.value = Double(qtyStepperArray[3])
        stepper04.value = Double(qtyStepperArray[4])
        
        textStepper00.text = "Qty : \(qtyStepperArray[0])"
        textStepper01.text = "Qty : \(qtyStepperArray[1])"
        textStepper02.text = "Qty : \(qtyStepperArray[2])"
        textStepper03.text = "Qty : \(qtyStepperArray[3])"
        textStepper04.text = "Qty : \(qtyStepperArray[4])"
        
        nameLable00.text = productNameArray[0]
        nameLable01.text = productNameArray[1]
        nameLable02.text = productNameArray[2]
        nameLable03.text = productNameArray[3]
        nameLable04.text = productNameArray[4]
        
        priceLable00.text = "💰" + String(productPriceArray[0])
        priceLable01.text = "💰" + String(productPriceArray[1])
        priceLable02.text = "💰" + String(productPriceArray[2])
        priceLable03.text = "💰" + String(productPriceArray[3])
        priceLable04.text = "💰" + String(productPriceArray[4])
        
        sum = 0
        sumLable.text = "\(sum)"
        
        //when button change need to scroll view back to left (begin) side
        productScrollView.setContentOffset(CGPoint.zero, animated: true)
    }
    
}

