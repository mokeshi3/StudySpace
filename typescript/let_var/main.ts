let num1: number = 1;

function letDeclaration() {
	let num2: number = 2;

	if (num2 > num1) {
		var num3: number = 3; // This is global
		num3++;
	}

	while (num1 < num2) {
		let num4: number = 4; // This is block-scope
		num1++;
	}

	console.log(num1); // Ok
	console.log(num2); // Ok
	console.log(num3); // Ok
	// console.log(num4); // Error
}

// console.log(num5); // Error
let num5: number = 5;

console.log(num6); // Ok
var num6: number = 6;

let num: number = 5;
let Num: number = 5;
let NUM: number = 5;
let NuM: number = 5;

// Cannot redeclar
// let num: number = 5;
// let Num: number = 5;
// let NUM: number = 5;
// let NuM: number = 5;
