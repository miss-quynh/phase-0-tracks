// Release 0: Find the Longest Phrase

// Define a function
function findMaxLength(items){
  // Iterate through each item in a given array
  // Assign the initial value of length of item to a max length variable
  var maxLength = 0;
  // Assign the item with the man length to a new variable
  var maxLengthItem = "";
  for (var x = 0; x <= items.length - 1; x++){
    // If current item length is greater than previous item length, then reassign current item length as new max length variable
    var item = items[x];
    if (item.length > maxLength){
      maxLength = item.length;
      maxLengthItem = item
    }
  }
  return maxLengthItem
}

console.log(findMaxLength(["hi", "hello", "morning", "noon"]))





// Release 1: Find a Key-Value Match

// Define a function
function keyValueMatch(object1, object2){
  var matchedPair = false
  // Iterate through the key-value of both given objects
  for (var key in object1){
    // If key-value from first given object equals key-value from second object, return true
    if (object1[key] == object2[key]){
      matchedPair = true
    }
  }
  return matchedPair
}

console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}))
console.log(keyValueMatch({gender: "Male", race: "Asian"}, {gender: "Female", name: "Quynh"}))





// Release 2: Generate Random Test Data

// Define a function
function generateRandomStrings(numberString){
  // Assign ten different strings to a variable
  var data = ["a", "in", "red", "mint", "green", "yellow", "morning", "lavender", "beautiful", "abacterial"];
  var newData = [];
  // Use method called Math.random() to randomly select strings in the array
  for (var x = 1; x <= numberString; x++){
    var index = Math.floor(Math.random() * 10)
    newData.push(data[index])
  }
  return newData
}

for (var x = 1; x <= 10; x++){
  var generatedRandomStrings = generateRandomStrings(x)
  console.log(generatedRandomStrings)
  console.log(findMaxLength(generatedRandomStrings))
}



