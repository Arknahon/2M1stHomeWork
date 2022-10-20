
import Foundation

//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине

class Product{
    
    var barcode: String
    var name: String
    var cost: Int
    var weight: Int?
    var volume: Int?
    var discount: Int?
    
    init(barcode: String, name: String, cost: Int, weight: Int? = nil, volume: Int? = nil, discount: Int? = nil){
        self.barcode = barcode
        self.name = name
        self.cost = cost
        self.weight = weight
        self.volume = volume
        self.discount = discount
    }
}
