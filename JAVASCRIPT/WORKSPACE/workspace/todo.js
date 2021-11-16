"use strict";

const todos = [
  { id: 1, description: "Learn programming", done: true },
  { id: 2, description: "Learn JavaScript", done: false }
];
// rendering


const form = document.getElementById("add_todo_form");

const textInput = document.getElementById("todo_text").value; //ritorna il valore presente

console.log("Valore inserito : ",textInput.value);

const todoList = document.querySelector(".todo-list");

//todoList.innerHTML = "";  //lista comincia vuota

//INSERIMENTO TODO DENTRO LA LISTA TRAMITE INPUT
/*
//createElement

const Li1 = document.createElement("Li"); //creaaazione nuovo tag Li
Li1.className("todo-list-item done");     //assegnazione al nuovo elemento Li della classe specificata
todoList.appendChild(Li1);

//CREAZIONE DEGLI ELEMENTI DENTRO LA LISTA
const checkbox1 = document.createElement("input");
checkbox1.type = "checkbox";
checkbox1.className = "todo-list-item done";
checkbox1.checked = true;     //aggiunge attributo checked booleano
checkbox1.disabled = true;
Li1.appendChild(checkbox1);
console.log("Input checkbox 1 creato\n")

const span1 = document.createElement("span");
span1.className = "todo-list-item-description";
span1.textContent = "Learn Programming";
Li1.appendChild(span1);
console.log("SPAN 1 creato\n")


todoList.innerHTML = "";
*/

//CLOONE NODE
const itemTemplate = todoList.children[1];

const Li1 = itemTemplate.cloneNode(true);
Li1.classList.add("done");
todoList.appendChild(Li1);

const check1 = Li1.querySelector("input");
check1.checked = true;
check1.disabled = true;

const span1=Li1.querySelector("span");
span1.textContent = "Learn Programming"