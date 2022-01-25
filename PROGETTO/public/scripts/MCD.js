
let form = document.querySelector("#form > form")
let names = []
let values = []

form.addEventListener("submit", ()=>{
    console.log("CIAO")
})



function MCD(a, b) {
    //a = b*q + r
    if (a == 0 || b == 0) return 0;
    let q = Math.floor(a/b)
    let r = a - (b*q)
    if (r == 0) {
        return MCD(a, b)
    }
    return MCD(b, r)
}

//lettura dei dati passati all'interno dell'URL

let parametri = location.search.substring(1) //toglie il ?
console.log(`parametri = ${parametri}`)

let array = parametri.split("&")
for (let index = 0; index < array.length; index++) {
    let cell = array[index]
    names[index] = cell.substring(0, cell.indexOf("="))
    values[index] = cell.substring(cell.indexOf("=")+1)
}

console.log(names)
console.log(values)

let A = Number(values[0])
let B = Number(values[1])

console.log(MCD(A, B))