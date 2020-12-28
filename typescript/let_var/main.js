var num1 = 1;
function letDeclaration() {
    var num2 = 2;
    if (num2 > num1) {
        var num3 = 3; // This is global
        num3++;
    }
    while (num1 < num2) {
        var num4 = 4; // This is block-scope
        num1++;
    }
    console.log(num1); // Ok
    console.log(num2); // Ok
    console.log(num3); // Ok
    // console.log(num4); // Error
}
// console.log(num5); // Error
var num5 = 5;
console.log(num6); // Ok
var num6 = 6;
var num = 5;
var Num = 5;
var NUM = 5;
var NuM = 5;
