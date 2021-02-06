

//1. You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple. Print all the values from `colorHex`.

var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]


for (_, colors) in colorHex{
    print(colors)
}


//2. Given an array of colors. We need to know how many times each color appears in the array.


var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]

var colorDict: [String: Int] = [:]

// Add new colors to the dictionary with color count of 1, otherwise increment existing color's count by 1
for color in colors {
    if colorDict[color] == nil {
        colorDict[color] = 1
    }
    else {
        colorDict[color]! += 1
    }
}

for (color, count) in colorDict {
    print("\(color) - \(count)")
}

//3. Write a function that returns the first N Fibonacci numbers. Sequence: 1,1,2,3,5,8,13


func fibo(n: Int) -> [Int] {
    
    assert(n > 1)
    var array = [0, 1]

    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}
fibo(n: 7)

//4. Write a function that prints the powers of 2 that are less than or equal to N.

func printPowerTwo(N: Int) -> [Int] {
    // Begin with 1, and compare each subsequent power of two with input before adding to array and incrementing exponent
    var exponent: Int = 0
    var initialPower: Int = 1
    var listOfTwoPower: [Int] = []
    
    while initialPower <= N {
        initialPower = initialPower * 2
        exponent += 1
        listOfTwoPower += [initialPower]
    }
    return listOfTwoPower
}
print( printPowerTwo(N: 65))

//5. Write a function that prints how many students belong to each track.


var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]

func printStudentTrack( courseAndStudents: [(String, Int)]){
    for (track, students) in courseAndStudents {
        print("The \(track) track has \(students) students enrolled into the course")
    }
}

printStudentTrack(courseAndStudents: coursesAndStudents)


//6. Write a function to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.

func check_first_last(_ numbers : [Int]) -> Bool {
   return numbers.first == numbers.last ? true : false
}

print(check_first_last([1, 2, 3]))
print(check_first_last([1, 2, 3, 1]))
print(check_first_last([1, 2, 2, 1]))

//7. Write a function to compute the sum of all the elements of a given array of integers.

func sumOfArray(_ numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

print(sumOfArray([1,2,3,4,5]))

//8. Write a function to reverse the elements of an array of integers to left direction. `[1,2,3]` becomes `[3,2,1]`

func reverseArray (numbers: [Int]) -> [Int] {
    return numbers.reversed()
}

reverseArray(numbers: [1,2,3])


//9. Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters.
func uniqueString(_ word: String) -> Bool {
    var uniqueSet: Set<Character> = []
    
    for letter in word {
        if uniqueSet.contains(letter){
            return false
        } else {
            uniqueSet.insert(letter)
        }
    }
    return true
}

print(uniqueString("Helo"))


//10. Write a function that accepts a String and a character and returns how many times that specific character appears in the string.



func specificChar (str: String, uniqueChar: Character) -> Int {
    var count: Int = 0
    
    for letter in str {
        if letter == uniqueChar {
            count += 1
        }
    }
    
    return count
}


print(specificChar(str: "Hello", uniqueChar: "l"))

//11.  Given a Grid with the following numbers.

func addEvenGridRow(grid: [[Int]]) -> Int {

    var evenRows: [[Int]] = []
    for (index, row) in grid.enumerated() {
        if index % 2 == 0 {
            evenRows.append(row)
        }
    }
    
    var evenRowSums: [Int] = []
    for row in evenRows {
        var count = 0
        for n in row {
            count += n
        }
        evenRowSums.append(count)
    }
    
    var count = 0
    for rowSum in evenRowSums {
        count += rowSum
    }
    return count
    
}


