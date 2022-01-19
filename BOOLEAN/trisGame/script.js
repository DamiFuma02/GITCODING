// SCRIPT PER IL GIOCO TRIS

const cells = document.querySelectorAll(".cell") 
const cellSigns = [];

let FirstPlayer = true;    //INIZIA IL GIOCO IL GIOCATORE 1

function Parity() {
    //Controlla se la Board è PIENA
    let numeroSegni = 0
    for (let index = 0; index < cells.length; index++) {
        const cell = cells[index];
        if (cell.innerText == "X" || cell.innerText == "O") {
            numeroSegni++;
        }
    }
    if (numeroSegni == cells.length) {
        //TAVOLA COMPLETA
        return true;
    } else {
        return false;
    }
}


//ritorna un valore booleano, TRUE = VITTORIA
function checkWIN (index) {
    //controlla se c'è un TRIS nelle celle contigue a quella puntata da index
    const winningComb = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6],
    ];
    for (let index = 0; index < winningComb.length; index++) {
        const combination = winningComb[index];

        const a = combination[0];
        const b = combination[1];
        const c = combination[2];

        if (cellSigns[a] && cellSigns[a] === cellSigns[b] && cellSigns[a] === cellSigns[c]){
            // VITTORIA
            return true;
        }
        
    }
    return false;


}

function resetBoard() {
    //PULISCE LA BORAD DA TUTTI I SEGNI
    for (let index = 0; index < cells.length; index++) {
        const cell = cells[index];
        cell.innerText = ""

        cellSigns[index] = ""
    }
    let h1MSG = document.getElementById("ResultMessage")
    h1MSG.innerText = ""

    let playerNumber = document.getElementById("player")
    playerNumber.innerText = ""

    document.getElementById("result").style.display = "none"
    return

}

const resetButton = document.getElementById("reset")
resetButton.addEventListener("click", ()=>{
    console.log("RESET")
    resetBoard()
})


function showResult(win) {
    const result = document.getElementById("result")
    result.style.display = "flex"
    let h1MSG = document.getElementById("ResultMessage")
    if (win) {
        h1MSG.innerText = `HA VINTO IL GIOCATORE `
    } else {
        h1MSG.innerText = `PARIT&Agrave;`
    }
    return
}

for (let index = 0; index < cells.length; index++) {
    const cell = cells[index];
    cell.addEventListener("click", ()=> {
        //CALLBACK AL CLICK SULLA CELLA

        //IN BASE AL TURNO DEL GIOCATORE PIAZZA X oppure O
        cell.innerText = (FirstPlayer)? "X" : "O"
        
        //CONFIGURAZIONE ATTUALE DELLA BOARD
        cellSigns[index] = cell.innerText

        
        if (checkWIN(index)) {
            console.log("VITTORIA")
            let winner = (FirstPlayer)? 1: 2;
            showResult(true)
            let playerNumber = document.getElementById("player")
            playerNumber.innerHTML = winner
            
        } else if (Parity()) {
            console.log("PAREGGIO")

            showResult(false)
            
        }


        FirstPlayer = !FirstPlayer    //CAMBIO TURNO
    })
    
}
