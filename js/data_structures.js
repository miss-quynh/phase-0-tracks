// The values of your object should be horse colors
var colors = ["red", "pink", "black", "white"]
console.log(colors)
colors.push("blue")
console.log(colors)

// The keys of your object should be horse names
var names = ["Adam", "Bonnie", "Carlos", "Diamond"]
console.log(names)
names.push("Elliott")
console.log(names)


var horse = [],
    object;

for(var y = 0; y < colors.length; y++){
    object = {};
    for(var x = 0; x < names.length; x++){
        object[names[x]] = colors[y];
    }
    horse.push(object)
}

console.log(horse)


// Write a constructor function for a car. Give it a few different properties of various data types, including at least one function.

var car = {make: 'Tesla', model: 'Model S', color: 'red', isHybrid: true}

function Car(make, model, color, isHybrid) {
  console.log("The new car:", this);

  this.make = make;
  this.model = model;
  this.color = color;
  this.isHybrid = isHybrid;

  this.accelerate = function() {console.log("VROOM! VROOM!"); };

  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");
var firstCar = new Car("Toyota", "Prius", "blue", true);
console.log(firstCar)
console.log("The " + firstCar.make + " " + firstCar.model + " can accelerate:");
firstCar.accelerate();
console.log("----------")

console.log("Let's build another car ...");
var secondCar = new Car("Lexus", "RX", "white", true);
console.log(secondCar)
console.log("The " + secondCar.make + " " + secondCar.model + " can accelerate:");
secondCar.accelerate();
console.log("----------")