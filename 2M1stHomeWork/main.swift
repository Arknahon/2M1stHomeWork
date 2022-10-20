import Foundation

//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)

class Car{
    var name: String = ""
    var model: String = ""
    var hp: Double = 0.0
    var fuel: Double = 0.0
    var tuningRate: Double = 1.1

    init(name: String, model: String, hp: Double, fuel: Double){
        self.name = name
        self.model = model
        self.hp = hp
        self.fuel = fuel
    }

    func tuning(){
        hp += hp * tuningRate
        fuel += fuel * tuningRate
    }
}
var car1 = Car(name: "Toyota", model: "Supra", hp: 370.0, fuel: 3.2)
var car2 = Car(name: "Nissan", model: "Skyline", hp: 340.0, fuel: 2.8)

    dump(car1)
    dump(car2)

    car1.tuning()
    print("")
    car2.tuning()

    dump(car1)
    dump(car2)


//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине
var shop = Shop(employees: 25, area: 7999)

shop.addProduct(product: Product(barcode: "5959595959", name: "Молоко", cost: 55, volume: 2))
shop.addProduct(product: Product(barcode: "5959595579", name: "Печенье", cost: 90, weight: 1))
shop.addProduct(product: Product(barcode: "5959475959", name: "Рис", cost: 40, weight: 10))
shop.addProduct(product: Product(barcode: "5959025959", name: "Мука", cost: 70, weight: 5))

shop.getInfo()

print("")

shop.editCost(name: "Молоко", name2: "Печенье", cost: 5)


//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту
var bank = Bank(terminals: 3, cashRegisters: 10, employess: 15)

bank.clientsCount(clients: Client(id: 255781, surname: "Бакиров", balance: 25000))
bank.clientsCount(clients: Client(id: 255341, surname: "Аралбаев", balance: 1000))
bank.clientsCount(clients: Client(id: 255776, surname: "Абаев", balance: 56000))
bank.clientsCount(clients: Client(id: 255796, surname: "Набиев", balance: 100000))
bank.clientsCount(clients: Client(id: 255734, surname: "Ким", balance: 250))
bank.clientsCount(clients: Client(id: 255755, surname: "Лю", balance: 12500))

bank.getInfo()

bank.showBalance(id: 255781)
