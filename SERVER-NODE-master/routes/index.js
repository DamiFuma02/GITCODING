if (process.env.NODE_ENV !== "production") {
    require("dotenv").config();
}

var express = require("express");
var app = express()
var router = express.Router();
var bcrypt = require("bcrypt");



var path = require("path");
const userModel = require("../models/user-model");

const adminEmail = process.env.ADMIN_EMAIL || ""
    //SE è POSSIBILE ACCEDERE ALLE VARIABILI DI AMBIENTE .env si usa quel dato
    //ALTRIMENTI SI USA LA MAIL INDICATA

router.get("/", (req, res) => {
    console.log(`RICHIESTA DI CONNESSIONE DA: ${req.ip}`)
    if (req.session.user != null) {
        //se esiste un user loggato ti rimanda alla pagina di info account
        res.redirect("/account")
    } else {
        res.render("register.ejs", { error: null })
    }
})

router.get("/login", (req, res) => {
    if (req.session.user != null) {
        //se esiste un user loggato ti rimanda alla pagina di info account
        res.redirect("/account")
    } else {

        res.render("LOGIN.ejs", { error: null })
    }
})



router.get("/tutorial", (req, res) => {
    res.render("TUTORIAL.ejs")
})

app.set('view-engine', "ejs");
app.set("views", path.join(__dirname, "views"));
//PER IMPOSTARE IL MOTORE DI VISUALIZZAZIONE E 
//LA CARTELLA DOVE ANDARE A REPERIRE I FILE DA RENDERIZZARE

router.post("/login", async(req, res) => {
    let datiInseriti = {
        username: req.body.username,
        email: req.body.email,
        password: req.body.password
    };
    //si usa una funzione asincrona in modo da dare al tempo agli await di finire le operazioni
    try {
        let user = await userModel.findOne({ username: req.body.username })
        console.log(`USER TROVATO ${user}`)
        if (user != null) {

            // valore booleano che è true se il compare è andato a buon fine
            let sameEMAIL = await bcrypt.compare(req.body.email, user.email)

            if (sameEMAIL) {
                console.log(`EMAIL INSERITA ${req.body.email} CORRISPONDE`)

                let samePSW = await bcrypt.compare(req.body.password, user.password)

                if (samePSW) {
                    console.log(`PASSWORD INSERITA ${req.body.password} CORRISPONDE`)

                    if (req.body.email == adminEmail) {
                        //controlla se la mail inserita corrisponde a quella da ADMIN
                        console.log("UTENTE AMMINISTRATORE")
                            //salva le info relative alla sessione (user loggato)

                        req.session.user = {
                            email: adminEmail,
                            name: req.body.username,
                            role: "ADMIN"
                        }
                    } else {
                        console.log("UTENTE OSPITE")
                        req.session.user = {
                            email: req.body.email,
                            name: req.body.username,
                            role: "GUEST"
                        }

                    }
                    //se tutto va bene e il login è corretto si viene reindirizzati alla pagina di infouser
                    res.redirect("/account/")
                } else {
                    console.log(`PASSWORD INSERITA ${req.body.password} NON CORRISPONDE`)
                    res.redirect("/login")
                }
            } else {
                console.log(`EMAIL INSERITA ${req.body.password} NON CORRISPONDE`)
                res.redirect("/login")
            }

        } else { //se non è stato trovato un user si ritorna al login
            req.session.user = null
            res.redirect("/login")
        }
        //in caso di un qualsiasi errore (email o psw errate) si torna alla pagina di login
    } catch (err) {
        console.log(err)
        res.status(500).send(err)
            //in caso di errore non calcolato si manda un codice di errore al client,
            // il quale dovrà ricaricare la pagina e riprovare
    }
})




router.post("/", async(req, res) => {
    try {
        var username = req.body.username
        var email = null //impostando null la funzione di hash non viene eseguita,
        var psw = null // e nemmeno il salvataggio del DB
        if (req.body.email != req.body.confemail) {
            //si torna alla pagina di registrazione inviando l'errore riscontrato
            res.render("register.ejs", { error: 'Le email inserite non corrispondono!' })
        } else {
            console.log("EMAIL CORRETTE");
            console.log(req.body.email);
            email = req.body.email
            if (req.body.password == req.body.confpassword) {
                console.log("PASSWORD CORRETTE");
                console.log(req.body.password);
                psw = req.body.password
            } else {
                res.render("register.ejs", { error: 'Le password inserite non corrispondono!' })
            }
        }


        //SALT è UN NUMERO CASUALE GENERATO DA UN'APPOSITA 
        //FUNZIONE IN MODO DA NON AVERE HASH UGUALI 
        //IN CASO DI VALOR DI TESTO UGUALI
        const emailSalt = await bcrypt.genSalt()
        const pswSalt = await bcrypt.genSalt()

        console.log(`USERNAME:${req.body.username}`);


        if (email != null && psw != null) {
            console.log(email)
            console.log(psw)


            //GENERAZIONE HASH DEI 2 TESTI INSERITI
            const hashedEMAIL = await bcrypt.hash(email, emailSalt)
            const hashedPSW = await bcrypt.hash(psw, pswSalt)

            var insertUser = {
                username: req.body.username,
                email: hashedEMAIL,
                password: hashedPSW
            }

            userModel.create(insertUser, function(err, createdUser) {
                if (err) {
                    console.error(err);
                }
                console.log("USER CREATO E AGGIUNTO AL DATABASE")
                console.log(createdUser);
            })
            res.redirect("/login")
        }


    } catch (error) {
        console.error(error)
        res.status(500).send(err)
    }


});


router.get("/start", (req, res) => {
    if (!req.session.user) {
        console.log("USER NON LOGGATO")
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    } else {
        res.render("Homepage.ejs", { user: req.session.user })
    }
    //contiene il nome dell'user che si sta usando
})


router.post("/logout", (req, res) => {
    if (req.session.user) {
        console.log("USER PRESENTE IN SESSIONE")
        delete req.session.user
        res.redirect("/login")
    } else {
        res.redirect("/login")
    }
    //in ogni caso si viene reindirizzati al login
    //nel primo caso viene anche eliminato l'oggetto dalla sessione
})


//quando da HOME.js si richiede il file index.js viene esportato il router
//usato nel comando app.use("/", indexRouter);
//indexRouter = require(index.js)
module.exports = router;