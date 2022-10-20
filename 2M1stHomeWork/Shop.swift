
import Foundation

//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине

class Shop{
    
    var productsArray: [Product] = []
    
    var employees: Int
    
    var area: Int
    var productCost = 0
    
    init(employees: Int, area: Int){
        self.employees = employees
        self.area = area
    }
    
    func addProduct(product: Product){
        productsArray.append(product)
    }
    
    func getInfo(){
        for (index,item) in productsArray.enumerated(){
            print("Продукт № \(index)\nНазвание - \(item.name)\nЦена - \(item.cost)\nШтрихкод - \(item.barcode)\nВес - \(item.weight)\nОбъём - \(item.volume)")
            productCost += item.cost
        }
        print("Количество продуктов - \(productsArray.count)\nОбщая стоимость товаров - \(productCost)")
    }
    
    func editCost(name: String, name2: String, cost: Int){
        var first: Int? = nil
        var second: Int? = nil
        for (index,item) in productsArray.enumerated(){
            if item.name == name{
                first = index
            }
            if item.name == name2{
                second = index
            }
        }
        if first != nil && second != nil{
            productsArray[first!].cost -= cost
            productsArray[second!].cost += cost
            print("Transfer succesfully")
            
        }
    }
}
