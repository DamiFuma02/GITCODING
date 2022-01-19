function showResult(win) {
    const result = document.querySelectorAll(".result")
    result.style.display = "flex"
    let h1MSG = document.getElementById("ResultMessage")
    
    if (win) {
        h1MSG.innerText = `HA VINTO IL GIOCATORE `
    } else {
        h1MSG.innerText = `PARIT&Agrave;`
    }
}