// A function that takes a string as a parameter and reverses the string


// Define the function
function reverseString(str){

  // Assign a string to a variable
  var reversedString = "";

  // Iterate through the length of the str parameter by starting from the very end of the str parameter
  for (var i = str.length - 1; i >= 0; i--)

  // Set the reversed string equal to the iterated str parameter
  reversedString += str[i];

  // Return the function
  return reversedString
}

console.log(reverseString("Hello"))

console.log(reverseString("World"))
