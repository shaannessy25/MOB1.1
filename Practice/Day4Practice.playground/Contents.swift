import UIKit

var str = "Hello, playground"


class Cashier {
    var firstName: String
    var lastName: String
    var hasBathroomKey: Bool
    
    init(firstName: String, lastName: String, hasBathroomKey: Bool = true) {
        self.firstName = firstName
        self.lastName = lastName
        self.hasBathroomKey = hasBathroomKey
    }
}



var cindy = Cashier(firstName: "Cindy", lastName: "Crawford", hasBathroomKey: true)

var ryan = cindy

ryan.firstName = "ryan"


print(cindy.firstName)
print(ryan.firstName)

enum TeaType {
    case black
    case oolong
    case lavender
    case chai
}

struct BobaTea {
    var tea: TeaType
    let sweetness: Int
    let hasBoba: Bool
}

func createBoba(teaType: TeaType, sweetness: Int, hasBoba: Bool) -> BobaTea {
    let boba = BobaTea(tea: teaType, sweetness: sweetness, hasBoba: hasBoba)
    return boba
}

var a = BobaTea(tea: .black, sweetness: 20, hasBoba: true)


var b = a

b.tea = .lavender

print(a.tea)
print(b.tea)



enum CoffeeType {
    case robusta
    case liberica
    case arabica
}

struct Coffee {
    var bean: String
    var sugar: Int
    var hasMilk: Bool
    
    func describe() {
        return print("\(bean) with \(sugar)% sugar \(hasMilk ? "with": "without") milk")
    }
}

struct Order {
    let name: String
    var boba: BobaTea
    
    func describe() {
        print("\(name) ordered \(boba.tea) boba tea, \(boba.sweetness)% sweetness, \(boba.hasBoba ? "with" : "without") boba")
    }
}


func createOrder(teaType: TeaType, sweetness: Int, name: String, hasBoba: Bool) -> Order {
    let drink = BobaTea(tea: teaType , sweetness: sweetness, hasBoba: hasBoba)
    let newOrder = Order(name: name, boba: drink)
    return newOrder
}




func createCoffee(beanType: String, sugar: Int, milk: Bool) -> Coffee {
    let coffee = Coffee(bean: beanType, sugar: sugar, hasMilk: milk)
    return coffee
}



let myOrder = createOrder(teaType: .black, sweetness: 50, name: "Andy", hasBoba: true)

//myOrder.describe()


let myCoffee = createCoffee(beanType: "Mocha", sugar: 30, milk: true)

//myCoffee.describe()

