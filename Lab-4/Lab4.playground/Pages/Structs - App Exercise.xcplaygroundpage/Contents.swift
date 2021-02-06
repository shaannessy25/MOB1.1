//: [Previous](@previous)
import Foundation
/*:
## Users and Distance

For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
*/
struct User {
    var age: Int = 0
    var name: String = " "
    var height: Double = 0.00
    var weight: Double = 0.00
    var activityLevel: Double = 0.00
}

/*:
Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
*/

var shaan = User()

shaan.name = "Shaan"
shaan.age = 26
shaan.height = 6.2
shaan.weight = 220
shaan.activityLevel = 4.5
print(shaan)

/*:
Distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.

- Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
*/

struct Distance {
    var meters: Double
    var feet: Double
    
    init(metric: Double){
        meters = metric
        feet = metric * 3.28084
    }
    
    init(standard: Double){
        feet = standard
        meters = standard / 3.28084
    }
}

/*:
Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
*/
let mile = Distance(metric: 1600)
print(mile.feet)
/*:
Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
*/

let quarterMile = Distance(standard: 5249.344)
print(mile.meters)

/*:
## Mile Times and Congratulations

The `RunningWorkout` struct below holds information about your users' running workouts. However, you decide to add information about average mile time. Add a computed property called `averageMileTime` that uses `distance` and `time` to compute the user's average mile time. Assume that `distance` is in meters and 1600 meters is a mile.

Create an instance of `RunningWorkout` and print the `averageMileTime` property. Check that it works properly.
*/
struct RunningWorkout {
    var distance: Double = 1600.00
    var time: Double = 6.0
    var elevation: Double
    var averageMileTime: Double {
        get {
            return time / distance
        }
    }
}

var mileTime = RunningWorkout(distance: 1500, time: 6.4, elevation: 3.2)

print(mileTime.averageMileTime)


/*:
In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. A great place to check whether or not you should display something to the user is in a property observer.

In the `Steps` struct below, add a `willSet` to the `steps` property that will check if the new value is equal to `goal`, and if it is, prints a congratulatory message. Create an instance of `Steps` where `steps` is 9999 and `goal` is 10000, then call `takeStep()` and see if your message is printed to the console.
*/
struct Steps {
    var steps: Int {
        willSet {
            if newValue == goal {
                print("Congratulations!")
            }
        }
    }
   var goal: Int
   
   mutating func takeStep() {
       steps += 1
   }
}

var stepCount = Steps(steps: 754, goal: 60000)
stepCount.takeStep()

/*:You can refer to this resource to read about Property Observers:
 https://www.hackingwithswift.com/read/0/17/properties
 */
//: [Next](@next)
