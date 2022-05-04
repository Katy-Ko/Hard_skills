//The Chef decided to replace one of the options with "Fluffy Pancakes".
//Write a program to take the index as input, replace the element with that index with "Fluffy Pancakes", and output the new menu to the console as an array.

//The element with index 2 has been replaced in the output array.

function main() {
    var breakfasts = ['Cinnamon Doughnuts', 'Waffles', 'Granola', 'Chorizo Burrito', 'French Toast'];
   
    breakfasts[2] = "Fluffy Pancakes"
    
    console.log(breakfasts)
}
main()