let string = "10010110110" //11 bit + 5 bit controllo = 16bit hamming code
//PARITà PARI

let matrix = new Array(16)  
for (let index = 0; index < matrix.length; index++) {
    matrix[index] = "" 
}


//popolamento matrice con i dati della stringa
popola(string, matrix, 1)
function popola(string, matrix, index) {
    if(string == "") {
        return matrix;
    }
    if (index >= matrix.length) {
        return matrix;
    }
    if (Math.floor(Math.log2(index)) == Math.log2(index)) {
        //index è una potenza di 2
        index++
        popola(string, matrix, index)
    } else {
        matrix[index] = string[0]
        index++
        popola(string.slice(1), matrix, index) 
    }
}

console.log(matrix)
//matrice configurata con i simboli di string in
//posizioni che non sono potenze di 2
hamming(string, matrix, index)

function count(pos, index, counter) {
    //conta le occorrenze di "1"
    if (Math.floor(Math.log2(index)) == Math.log2(index)) {
        return 0;
    }
    if (index >= matrix.length) {
        return 0;
    }
    if (counter == pos) {
        index += (pos + 1)
        count(pos, index, 0)
    } else {
        if (string[index] == "1") {
            counter++
            index++
            return count(pos, index, counter) + 1
        } else {
            
            counter++

            return count(pos, index, counter)
        }
    }
    
    
}

function hamming(string, matrix, index, cont) {
    if (Math.floor(Math.log2(index)) == Math.log2(index)){
        //index = potenza di 2 perciò si deve popolare la matrice

    }
    return matrix

}



//matrice inizializzata vuota

// function checkOnes(pos) {
//     let counter = 0;
//     let parityFlag = "0"
    
//     if(counter % 2 != 0) {
//         parityFlag = "1"
//     }
//     console.log(counter)

//     matrix[pos] = parityFlag;

// }

// //popola la matrice seconodo l'algoritmo di hamming
// function createHamming(string, startIndex) {
//     let position = Math.pow(2, startIndex)
//     console.log(`Position = ${position}`)
//     //bit posizione 1, lettura dei bit dispari di string
//     checkOnes(position)
//     return
// }


