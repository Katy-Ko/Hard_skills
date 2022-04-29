// let compare_2 = n1 > n2; 

// let condition = true

// if (compare_2) {
//     let t_1 = 5;
//     let t_2 = 10;
//     let result = t_1 + t_2
//     console.log("IF_RESULT = " + result)
// } else if () 

// else {
//     console.log("IF_RESULT = " + compare_2 )
// }

// let hour = "Sunday";
// if(hour == "Sunday"){
//     console.log("Open_Sunday")
// }

// if(hour < 18 && hour >= 8) {
//     console.log("Open")
// } else if (hour >= 24 || hour < 0){
//     console.log("Error")
// } else if (hour == "Sunday" || hour == "Saturday"){
//     console.log("Holiday_Close")
// }
// else {
//     console.log("Close")
// }

// console.log("==================")

// function workDays(days, hours){
//     console.log("workDay = ", days)
//     console.log("workHours = " , hours)
// }

// workDays("Monday", 7)

// days1 = "Sunday";
// console.log(typeof days1 == 'string');

// function workDays(days, hours){

//     if (typeof days == "string" && typeof hours == "number"){
//         console.log("workDay = ", days)
//         console.log("workHours = " , hours)
//     }
// }   

// function workDays(day){

//     let h_days = ['Saturday', 'Sunday']
//     let w_days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']

//     if (typeof day == 'string'){
//         if(w_days.includes(day)){
//             return true
//         } else if (h_days.includes(day)){
//             return false
//          } else {
//              return false
//          }
//     } else {
//         console.log("Error! Word not a Day title")
//     }
// }

// console.log(workDays("dsdcs"))

// function check_hours(hour){
//     if (hour < 18 && hour >= 8) {
//         return true}
//         else if (hour >= 24 || hour < 0) {
//             return false}
// }

// let day = 12;
// let hour = 17;

// if (workDays(day) && check_hours(hour)){
//     console.log("Open")
// } else {
//     console.log("Close")
// }
    
let test_day = "Saturda111y"

switch (test_day){
    case "Saturday":
        console.log("Cool! Saturday")
        break;
    case "Monday":
        console.log("Cool! Monday")
        break;
    case "Sunday":
        console.log("Cool! Sunday")
        break;
    default:
        console.log("Default!!!")
}

