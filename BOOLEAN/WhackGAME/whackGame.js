
let cells = document.querySelectorAll(".cell")


//TIMER  DISPLAY
let timerDisplay = document.querySelector("#timer-display")
let startTime = 30;   //timer iniziale in SECONDI
let currentTime = 30;
timerDisplay.innerText = startTime;


//SCORE DISPLAY
let scoreDisplay = document.querySelector("#score-display")
let score = 0;
scoreDisplay.innerText = score


function updateScore() {
    score++;
    scoreDisplay.innerText = score
    return
}


function cleanBoard(){
    for (let index = 0; index < cells.length; index++) {
        const cell = cells[index];
        cell.classList.remove("bugImage")
        cell.classList.remove("splat")
    }
    return
}


function randomBug() {
    if (scoreDisplay.innerText == 20) {
        //AUMENTA LA DIFFICOLTà
        bugSpeed /= 2;
    }
    //PULIRE TUTTE LE CELLE
    cleanBoard()
    //ASSEGNAMENTO RANDOMICO DEL BUG 
    let index = Math.floor( Math.random()*9) //genera un numero randomico tra [0,8]
    let cell = cells[index]
    cell.classList.add("bugImage")
    return
}


function splatBug(index) {
    console.log("SPLAT")
    let cellClassList = cells[index].classList
    if (cellClassList.contains("bugImage")) {
        //se la cella premuta conteneva un BUG
        cellClassList.remove("bugImage")
        cellClassList.add("splat")
        updateScore()
    }
    return
}

for (let index = 0; index < cells.length; index++) {
    const cell = cells[index];
    cell.addEventListener("click", ()=>{
        splatBug(index)
    })
}



//START GAME
let startButton = document.querySelector("#startButton")
let bugSpeed = 800;
startButton.addEventListener("click", ()=>{
    const bugMotion = setInterval(randomBug, bugSpeed)
    const startGame = setInterval(()=>{
        if (currentTime <= 0) {
            //FINE dEL GIOCO
            //RESET TIME
            timerDisplay.innerText = "FINE!!!"
            currentTime = startTime;
            //FA TERMINARE I 2 INTERVALLI
            clearInterval(startGame)
            clearInterval(bugMotion)
            cleanBoard()

        } else {
            currentTime--;
            timerDisplay.innerText = currentTime
        }
    } , 1000)   //ogni secondo 
})



