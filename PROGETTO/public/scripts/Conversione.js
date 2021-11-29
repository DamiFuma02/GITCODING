    
    let navButton = document.getElementsByTagName("button")[0];
    let hideNav = document.getElementById("hideNav");
    let indexNav = document.getElementById("index");
    hideNav.addEventListener("click", ()=> {
        indexNav.style.display = "none"
        navButton.style.display = "block"
    })
    navButton.addEventListener("click", () => {
        //toglie la visibilità del bottone
        navButton.style.display = "none"
        //visualizza l'indice
        indexNav.style.display = "flex"
    })
    
    let textContents = document.getElementsByClassName("textContent")
    function showContent(index){
        console.log(index)
        textContents[index].style.display = "inline-block"
    }
    let HideALL = document.getElementById("hideAll")
    HideALL.addEventListener("click", ()=> {
        //nasconde la NAVBAR
        indexNav.style.display = "none"
        //visualizza il navButton
        navButton.style.display = "block"
        //nasconde tutto il contenuto della pagina
        for (let index = 0; index < textContents.length; index++) {
            textContents[index].style.display = "none"
        }
        
    })
    
    let dropindexes = document.getElementsByClassName("indexdrop")
    let buttons = document.getElementsByClassName("fas fa-angle-down")
    
    function dropindex (index, flag) {
        if (flag) dropindexes[index].style.display = "flex"
        else dropindexes[index].style.display = "none"
        console.log(index)
    }
    
    
    //CONVERTITORE DI BASE

    function doLog(base, argomento) {
        //= logbase (argomento)
        return Math.log10(argomento) / Math.log10(base)
    }

    
    function checkBases(startBase,toBase) {
        //controlla il range della basi inserite
        if((startBase > 16 || startBase <2) || (toBase > 16 || toBase <2 || (toBase<16 && toBase>10)) ){
            document.getElementById("startBase").value = ""
            document.getElementById("startBase").placeholder ="Base NON VALIDA -> (2-16)"
            document.getElementById("toBase").value = ""
            document.getElementById("toBase").placeholder ="Base NON VALIDA -> (2-16)"
            return false;
        }
        
        //se le basi sono corrette ritorna TRUE
        return true;

    }

    

    function parteIntera(string) {
        //RESTITUISCE LE CIFRE A SX DEL "."
        let k = (string.length - 1)
        if (string[k] == ".") {
            return string.substring(0, k)
        } else {
            //toglie l'ultimo carattere della stringa
            return parteIntera(string.substring(0, k))
        }
    }

    function parteDec(string) {
        //RESTITUISCE LE CIFRE A DX DEL "."
        if (string[0] == ".") {
            return string.substring(1)
        } else {
            //toglie il primo carattere della stringa
            return parteDec(string.substring(1))
        }
    }
    
    function toBase10(startBase, string) {
        //restituisce un numero decimale intero
        console.log(`string = ${string}`)

        let k = (string.length - 1);
        console.log(k)
        if (k == 0){
            //è rimasto 1 solo carattere nella stringa
            return Number(string);
        } else {
            
            return (    Number(string.substring(k)) +
                        (startBase * (toBase10(startBase, string.substring(0, k))) )
            )
        }
    }

    function decToBase10(startBase, number, decLength){
        //decLength = lunghezza parte decimale del numero da convertire 
        //number è il numero totale senza VIRGOLA
        return ( toBase10(startBase, number) 
                    / (Math.pow(startBase, decLength)) 
        )
    }

    function fromBase10(toBase, number) {
        //number INTERO DECIMALE
        //RESTITUISCE STRINGA
        let q = Math.floor(number / toBase);
        console.log(`q = ${q}`)
        let r = number % toBase
        if (q == 0){
            //viene tornato R
            if (r>9){  
                switch (r) {
                    case 11:
                        r = "B"
                        break;
                    case 12:
                        r = "C"
                        break;
                    case 13:
                        r = "D"
                        break;
                    case 14:
                        r = "E"
                        break;
                    case 15:
                        r = "F"
                        break;
                    default:   //r == 10
                        r= "A"
                        break;
                }
            }
            return r.toString();
        }
        else {
            
            return (
                fromBase10(toBase, q) +

                r.toString()
            )
        }
    }

    function decFrom10(toBase, number){
        //number = 0.x
        //ricorsione per conversione parte decimale
        //RESTITUISCE UNA STRINGA
        try {
            let k = number * toBase  
            let r = 0;
            if (k == Math.floor(k)){
                //k è un numero intero senza virgola
                //parte dec = 0
                //il resto equivale a k
                return k.toString();

            } else {
                //r è la parte intera di K
                r =  parseInt( parteIntera(k.toString()) );
            }

            if(k == 0){
                return r.toString();
            } else {
            return ( (r.toString()) +
                decFrom10(toBase, (k-r)) );
            }
        } catch (error) {    //per prevenire il LOOP
            console.log("errore")
            console.error(error)
        }
    }

    function convBases(startBase, toBase, number) {
        //number = Stringa
        return (
            fromBase10(toBase, toBase10(startBase, number))
        )
    }

    function toLessStart(x, tobase, number) {
        //toBase < startBase perciò si ALLUNGA di x 
        //x = numero di caratteri che la stringa fromBase10() deve avere 
        let zeroString = "0000000"   //da questa stringa si prendono x 0 e si aggiungono al converted
        console.log(`x = ${x}`)
        console.log(`toBase = ${tobase}`)

        console.log(`number = ${number}`)
        let k = number.length -1
        console.log(`k = ${k}`)
        if (k==0){
            console.log(`number = ${number}`)
            let converted = fromBase10(tobase, parseInt(number[k])) //STRINGA
            console.log(`${number[0]} converted = ${converted}`)

            if (converted.length < x){
                //si aggiungono x 0 prima della converted
                return zeroString.substring(0, (x-converted.length)) + converted;
            }
            return converted;
        } else {
            let converted = fromBase10(tobase, parseInt(number[0])) //STRINGA
            console.log(`${number[0]} converted = ${converted}`)
            if (converted.length < x) {
                return ( zeroString.substring(0, (x-converted.length))   //aggiunge x 0
                        + converted 
                        + toLessStart(x, tobase, number.substring(1))  
                )
            } else {
                return (
                    converted   //converte il numero in toBase
                    + toLessStart(x, tobase, number.substring(1))   //toglie il primo carattere, coonvertito sopra             
                )
            }
        }
    }

    function numberValidation(number, startBase) {
        //number == STRINGA
        for (let index = 0; index < number.length; index++) {
            //controllo se il numero contiene cifre non valide per la base espressa
            if ( parseInt(number[index]) >= startBase) {
                //NUMERO NON VALIDO 
                return false;
            }
        }
        //se il ciclo finisce vuol dire che il numero inserito è valido
        return true;
    }

    //funzione che effettua il controllo delle basi 
    //e chiama la funzione conversione corretta
    function convert(startBase, toBase, number) {
        //startBase e toBase === NUMERO INTERO
        //number = STRINGA
        if (number.includes(".")) {
            //se è un numero con la virgola si prelevano le due parti
            //separate e si uniscono
            console.log(`${number} con virgola`)

            
            if (startBase == 10){
                //PARTE INTERA conversione con divisione per toBase
                //PARTE DEC moltiplicazione per toBase
                //RISULTATO concat(RES1, RES2)
                return (
                    fromBase10(toBase, parteIntera(number)) + "."  //stringa
                    + decFrom10(toBase, parseFloat("0."+parteDec(number)) )  //passa alla funzione un numero = 0.parteDec
                )
            }
            
            if (toBase == 10) {
                //si usa il sistema di accumulo ricorsivo 
                //si effettua la conversione intera e poi 
                //si divide per 2 ^ parteDec.lenght
                return decToBase10(startBase, (parteIntera(number)+ parteDec(number)) , parteDec(number).length)
            } else {
                let a = decToBase10(startBase, (parteIntera(number)+ parteDec(number)) , parteDec(number).length)
                //a = numero decimale inserito dall'utente in startBase, convertito in base 10
                return ( // da NUMERO CON VIRGOLA da base 10 a toBase 
                    fromBase10(toBase, parteIntera(a.toString() )) + "."  //stringa
                    + decFrom10(toBase, parseFloat("0."+parteDec(a.toString())) )  //passa alla funzione un numero = 0.parteDec
                )
            }

            //controllare se le due basi sono una potenza dell'altra
            


        } else {
            console.log(`${number} INTERO`)
            //il numero inserito è INTERO senza VIRGOLA
            
            if (doLog(toBase ,startBase ) == Math.floor(doLog(toBase , startBase))) {
                //startBase = toBase ^ x
                console.log(`startBase = toBase^${doLog(toBase, startBase)}`)

                //1 startBase =>  x cifre di toBase 
                let x = doLog(toBase ,startBase );
                //toBase < startBase
                return toLessStart(x, toBase, number);
            }
        
            
            //CONVERSIONE NORMALE
            if (startBase == 10){
                //conversione con divisione per toBase
                return fromBase10(toBase, number).toString()
            }
            
            if (toBase == 10) {
                //si usa il sistema di accumulo ricorsivo 
                
                return toBase10(startBase, number).toString()
            } else {
                //si effettua la connversione intermedia a base 10 
                return convBases(startBase,toBase, number).toString()
            }
        
        //controllare se la base è POTENZA DI 2
        //controllo se è POTENZA DI 2
        //ALTRIMENTI startBase -> 10 -> toBase
        }
    }

    //preleva il formato della conoversione base 2
    
    

    let invio = document.getElementById("convertButton")
    invio.addEventListener("click",()=> {
        //CONVERSIONE NUMERICA
        let number = document.getElementById("number").value   //salvato come STRINGA per una semplice conversione ricorsiva
        let startBase = parseInt(document.getElementById("startBase").value)
        let toBase = parseInt(document.getElementById("toBase").value)
        let result = document.getElementById("Result")
        //i dati inseriti vengono salvati in formato numero, invece che stringa
        console.log(`startBase = ${startBase}`)
        console.log(`toBase = ${toBase}`)

        if (checkBases(startBase, toBase )){
            //BASI VALIDE 
            //CONTROLLO SE NUMBER è VALIDO
            
            
            
            
            if (numberValidation(number, startBase)) {
                //NUMERO VALIDO
                let convFormat = ""
                let nBit = 0;  //VALORE DI DEFAULT perciò la conversione viene effettuata in base PC
                if (toBase == 2) {
                    let div = document.getElementById("chooseFormat")
                    div.style.display = "flex"
                    let checkboxes = div.children
                    do {
                        for (let index = 0; index < checkboxes.length; index++) {
                            if (checkboxes[index].checked) {
                                if (checkboxes[index].id == "EcessoN") {
                                    //se è selezionato EcessoN allora bisogna leggere il valore nell input nBit
                                    document.getElementById("nBit").style.display = "block" //rende visibile l'input nBIT
                                    do {
                                        nBit = parseInt(document.getElementById("nBit").value)
                                        //attende che il valore inserito sia valido (>2)
                                    } while (nBit < 2);
                                }
                                convFormat = checkboxes[index].value
                            }
                            
                        }
                        //finchè un checkbox non è checked si aspetta
                    } while (convFormat == "");


                    if (convFormat != "Default") {
                        //conversioni particolari
                    }

                }
                //INIZIO CONVERSIONE
                console.log(`NUMERO ${number} VALIDO`)
                result.value = convert(startBase, toBase, number).toString()
            } else {
                numberCell = document.getElementById("number")
                numberCell.style.backgroundColor = "rgb(255, 136, 0)"
                numberCell.placeholder = "Reinserisci il numero"
                numberCell.value = ""
                
                alert("IL NUMERO INSERITO NON RIENTRA NELLA BASE")
            }
            

            //number non ha la virgola perciò si effettua la conversione normale
            
        } 
        
        else {
            alert("BASI INSERITE NON VALIDE")
            result.style.backgroundColor = "rgb(255, 136, 0)"
            result.placeholder = "BASI NON VALIDE"
        }
        //CONVERSIONE NON EFFETTUATA
    })
    
    
    // <!--
    //     calc
    //     function doBaseCon() {
    //         form=document.forms[0];
    //         from=form.from.value;to=form.to.value;val=""+form.val.value;
            
    //         if(check(to,0)==1 || check(from,0)==1){form.res.value="Le basi devono essere numeri interi (escluso -1, 0, +1).";return;}
    //         if(to==0 || from==0){form.res.value="Nella base che hai scelto il valore numerico NON può essere convertito.";return;}
    //         if(to==-1 || to==1 || from==-1 || from==1){form.res.value="Non credo che la base scelta funzioni bene!!";return;}
            
    //         from=1*from;to=1*to;
            
    //         txt=baseCon(from,to,val);
            
    //         form.res.value=txt;
            
    //     }
    //     function check(n,dec) {
    //         np=0;e=0;l=n.length;
    //         for(r=0;r<l;r++) {
    //             c=n.substring(r,r+1);
    //             if(c<"0" || c>"9") {
    //                 e2=1;
    //                 if(c=="." && np==0 && dec==1){np++;e2=0;}
    //                 if((c=="+" || c=="-")&& r==0 && l>1){e2=0}
    //                 e=e | e2;
    //             }
    //         }if(n=="-." || n=="+.") return 1;
    //         return e;
    //     }
        
    //     function clr() {
    //         f=document.forms[0];
    //         f.res.value="";
    //     }
        
    //     function format(num) {
    //         if(""+num=="NaN"){return "Controlla bene il valore inserito."}
            
    //         txt="";
    //         if(num<0){txt+="-"; num*=-1}
    //         for(n=0; n<11; n++) {
    //             dig=Math.floor(num);
    //             num=(num-dig)*10;
    //             txt+=dig;
    //             if(n==0)txt+=".";
    //         }
    //         return txt;
    //     }
        
    //     function baseCon(from,to,val) {
    //         val2=baseXCon10(from,val);
    //         if(""+val2=="nh")sum="No alpha-numerics in base "+from+" numbers."; else sum=base10ConX(to,val2);
    //         return sum;
            
    //     }
    //     function baseXCon10(from,val){
    //         val=""+val;sum=0;sgn=1;pl=0;div=1;
    //         for(a=0;a<val.length;a++) {
    //             ch=val.substring(a,a+1);
    //             if(ch=="+" && a==0)sgn=1;
    //             else {
    //                 if(ch=="-" && a==0)sgn=-1;
    //                 else {
    //                     if(ch==".")div=pl;
    //                     else {
    //                         if(ch>='0' && ch<='9')dg=1*ch;
    //                         ch=ch.toUpperCase();
    //                         if(ch=='A')dg=10;if(ch=='B')dg=11;if(ch=='C')dg=12;if(ch=='D')dg=13;if(ch=='E')dg=14;if(ch=='F')dg=15;
    //                         if(ch>='A' && ch<='Z' && from<=10 && from>0) {nh="nh"; return nh;}
    //                         sum+=Math.pow(from,pl)*dg;
    //                         pl--;
    //                     }
    //                 }
    //             }
                
    //         }
    //         if(div==1)div=pl;
    //         sum/=Math.pow(from,div+1);
    //         if(sum>1000000 && sum-Math.floor(sum)<.000001) sum=Math.floor(sum);
    //         if(sum>1000000 && Math.ceil(sum)-sum<.000001) sum=Math.ceil(sum);
    //         sum*=sgn; round=1000000000000
    //         sum=Math.floor(sum*round+.5)/round;
    //         return sum;
    //     }
    //     function base10ConX(to,val) {
    //         //to new
    //         if(val<0){sgn="-";val=-val;}else{sgn="";}
    //         sum="";
            
    //         c=Math.floor(val);
            
    //         start=0;rem=0;digits=0;
    //         if(c==0)sum="0";
    //         while(Math.abs(c)>=1) {
    //             d=c-Math.floor(c/to)*to;
    //             dfl=Math.floor(d);
    //             if(dfl!=d){rem=d-dfl;d=dfl;}
    //             if(Math.abs(d)>Math.abs(to)) d=0;
    //             c=Math.floor(c/to);
    //             if((start==0 && d!=0) || c<val*to)start=1;start=1;
    //             sum=""+alp(d,to)+sum;
    //             digits++;
                
    //         }
    //         c=val-Math.floor(val)+rem;
    //         if(c!=0) {//decimals
    //             sum+=".";
    //             for(a=0;a<32/Math.log(to)-digits;a++) {
    //                 if(c==0)break;
    //                 d=Math.floor(c*to);
    //                 if(to<0 && d==to) break;
    //                 c=c*to-d;
    //                 sum+=alp(d,to);
    //             }
    //         }
    //         sum=sgn+sum;
            
    //         return sum;
    //     }
    //     function alp(d,to) {
    //         if(d>=0 && d<=9)w=""+d;
    //         if(to>=10 && to<=36) { 
    //             if(d==10)w="A";if(d==11)w="B";if(d==12)w="C";if(d==13)w="D";if(d==14)w="E";if(d==15)w="F";if(d==16)w="G";if(d==17)w="H";if(d==18)w="I";if(d==19)w="J";if(d==20)w="K";if(d==21)w="L";if(d==22)w="M";if(d==23)w="N";if(d==24)w="o";if(d==25)w="P";if(d==26)w="Q";if(d==27)w="R";if(d==28)w="S";if(d==29)w="T";if(d==20)w="U";if(d==31)w="V";if(d==32)w="W";if(d==33)w="X";if(d==34)w="Y";if(d==35)w="Z";
    //         }
    //         if(d<0 || d>35 || (d>9 && to>36))
    //             w="["+d+"]";
    //             return w;
    //         }
            
    //         //-->
            
       