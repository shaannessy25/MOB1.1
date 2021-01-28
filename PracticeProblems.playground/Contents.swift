import UIKit

var str = "Hello, playground"


// 1. Define an array called suitcase. It should store Strings. Imagine you are going on a trip and you need to put things in your suitcase. Use the append method to add the things you are going to take. You can only append one item at a time. Add at least 4 things to the suitcase.


var suitcase : [String] = ["Hello", "World", "Test"]
suitcase.append("Toothpase")

// 2. Print the array suitcase to the console


print(suitcase)

//Using suitcase, print the item at index 3 to the console.

print(suitcase[3])


//Given var fruit = ["🍐", "🐍", "🍏", "🐶", "🍐", "🍋", "🍓"] Remove the animals from array of fruits.


var fruit = ["🍐", "🐍", "🍏", "🐶", "🍐", "🍋", "🍓"]

fruit.remove(at: 3)

print(fruit)


// Given the following array, insert Apr before May?

var months = ["Jan", "Feb", "Mar", "May"]

months.insert("Apr", at: 3)

print(months[0])



// Write a function that takes an Array of String as an input and returns a String. The returned String should be all of the items in the input String with a space between each.


func arraytoString(array: [String]) -> String {
    var str = ""
    for i in 0 ..< array.count {
        
//        str += array[i] + (i == array.count - 1 ? "" : " ")
    
        if i == array.count - 1{
          str += array[i] + " "
        } else {
          str += array[i]
        }
    }
    return str
}


print(arraytoString(array: months))




// Dictionaries Practice

// Code the following challenges in a Swift Playground.

// 1. Create an array where the key is the name of an app and the value is the time you spend on it daily. Enter a few examples.

var arraytoDict: [String: Int] = ["youtube": 30, "facebook": 34, "snapchat": 13]

// 2. Give the following dictionary. Access a hex value of a color.

var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

print(colorHex["orange"]!)
// Try to access the value in a safe way. 😅

// 3. Try adding a new color `red` with hex #f20707. Then print the dictionary to see the change.

colorHex.updateValue("1e53df33", forKey: "magenta")
 
print(colorHex)
// 4. Delete any color from the dictionary. Then print the dictionary to see the change.

colorHex.removeValue(forKey: "purple")

print(colorHex)
