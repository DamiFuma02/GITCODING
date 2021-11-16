"use strict";

// Objects
const obj = {};
console.log(obj);

const me = {
  nome: "Marco", // property, attribute
  cognome: "Bolis"
};

console.log(me);
console.log(me.nome, me.cognome); // static access

me.nome = "Max";
me.cognome = "Power";
console.log(me.nome, me.cognome);

me.eta = 36;
console.log(me.nome, me.cognome, me.eta);

console.log(me.miao, "miao" in me); // default undefined

// const prop = prompt("Property?"); // ???
// const value = prompt("Value?");
// me[prop] = value; // me.??? = dynamic access
// console.log(prop, ":", me[prop]); // me.??? = dynamic access

for (let p in me) {
  console.log(">", p, ">", me[p]);
}

// Array
const arr = [];
console.log(arr);

const stuff = [
  "matita",
  "occhiali",
  {
    nome: "astuccio",
    contenuto: ["biro", "sporco"]
  }
];
console.log(stuff.length);
console.log(stuff[0]);
console.log(stuff[1]);
console.log(stuff[2].nome, stuff[2].contenuto[0], stuff[2].contenuto[1]);

stuff.length = 0; // empty out array
console.log(stuff);

// Array methods
arr.push(1);
arr.push(2, 3, 4);

arr.unshift(0);
console.log(arr);

const x = arr.pop();
const y = arr.shift();
console.log(x, y, arr);

const zhh = arr.slice(1, 2); // [1, 2)
console.log(zhh, arr);

const kyy = arr.splice(1, 1, -1, -2, -3);
console.log(kyy, arr);
