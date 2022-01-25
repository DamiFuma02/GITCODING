//per legger i parametri passati nell'URL
var parameters = location.search.substring(1);
let names = null   //possono diventare dei vettori oppure stringhe
let values = null
if (parameters != "") {   //controlla che i parametri non siano vuoti
    if (parameters.includes("&")) {
        //sono stati passati più parametri, perciò bisogna splittarli
        let splitted = parameters.split("&") //array con sottostringhe separate da #
        console.log(splitted)
        for (let index = 0; index < splitted.length; index++) {
            //splittare ogni elemento in nome e valore
            names[index] = splitted[index].substring(0, splitted[index].indexOf("="))
            values[index] = splitted[index].substring(0, splitted[index].indexOf("="))
            
        }

    } else {
        names = parameters.substring(0, parameters.indexOf("="))
        values = parameters.substring((parameters.indexOf("=") + 1), parameters.length)
    }

    
    
    console.log(`names = ${names}`)
    console.log(`values = ${values}`)

}