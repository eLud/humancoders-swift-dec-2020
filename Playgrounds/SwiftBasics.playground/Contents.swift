
var str = "Hello, playground"
str = "Hello, Swift!"
// str = 42

let languageName = "Swift"
//languageName = "Objective-C"

let name: String
name = "Ludovic"

print(name)

let version = 5.3
let somethingFloat: Float = 2.0

let result = Float(version) + somethingFloat

let a = 5
let b = 2
let c = Float(a) / Float(b)
// Int : 2

//: #Collections

var cities = ["Paris","Bordeaux","Lyon","Marseille"]
var cities2: [Any] = ["Paris", "Lyon", "Marseille", 123, 23.87, true]

for ville in cities {
    print(ville.uppercased())
}

for truc in cities2 {
    print(truc)
}

var emptyTab: [Int] = []
var emptyTab2 = [Int]()
var emptyTab3 = Array<Int>()

cities
let slice = cities[1...3]
cities[1...3] = ["SF", "NYC"]
cities

var emptyDico: [String:Int] = [:]
var emptyDico2 = [String:Int]()
var emptyDico3 = Dictionary<String,Int>()

var capitales = ["France" : "Paris", "USA" : "Washington", "Canada" : "Ottawa"]

capitales["Irlande"] = "Dublin"

let capFrance: String? = capitales["France"]
let capIrlande: String? = capitales["Irlande"]

// ! : Force-unwrap operator
print("La capitale de la France est " + capFrance!)
// ?? : Nil-coalescing operator (si "some" on utilise, si nil, on prend le défaut)
print("La capitale de l'Irlande est " + (capIrlande ?? "Je sais pas"))


   //String     //Optional<String>
if let dublin = capitales["Irlande"] {
    print("La capitale de l'Irlande est " + dublin)
}

if (capitales["Irlande"] != nil) {
    print("La capitale de l'Irlande est " + capitales["Irlande"]!)
}

print(capIrlande?.uppercased())

//: #Classes et structures

struct Dog {
    let name: String
    var age: Int

    func bark() {

    }
}

var medor = Dog(name: "Médor", age: 0)
let medor2 = medor //Copie de Médor

medor.age += 1
print(medor.age)
print(medor2.age)

class Animal {
    var name: String = ""
    var age: Int = 0
}

class Cat: Animal {
    func meow() {

    }
}

let felix = Cat()
felix.name = "Félix"
//felix = Cat()

let felix2 = felix //Nouvelle référence
print(felix.age)

felix.age += 1
print(felix.age)
print(felix2.age)
