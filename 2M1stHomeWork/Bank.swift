
import Foundation

//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту

class Bank{
    var clientsArray: [Client] = []
    
    var terminals: Int
    var cashRegisters: Int
    var employees: Int
    var clientsCount = 0
    
    init(terminals: Int, cashRegisters: Int, employess: Int){
        self.terminals = terminals
        self.cashRegisters = cashRegisters
        self.employees = employess
    }
    func clientsCount(clients: Client){
        clientsArray.append(clients)
    }
    func getInfo(){
        for (index,item) in clientsArray.enumerated(){
            print("Клиент № \(index)\nId клиента - \(item.id)\nФамилие клиента - \(item.surname)\nБаланс клиента - \(item.balance)")
            clientsCount += item.count
        }
        print("Количество клиентов - \(clientsArray.count)")
    }
    func showBalance(balance: Int? = nil, id: Int? = nil, surname: String? = nil){
        for (index,item) in clientsArray.enumerated(){
            if id == item.id && surname == item.surname{
                print(balance)
            }
        }
    }
}
