
import Foundation

//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту

class Client{
    var id: Int
    var surname: String
    var balance: Int
    var count = 0
    
    init(id: Int, surname: String, balance: Int){
        self.id = id
        self.surname = surname
        self.balance = balance
    }
}
