var express = require("express");
var router = express.Router();


router.get("/", (req, res) => {
    if (req.session.user) {
        console.log(`USER LOGGATO: ${req.session.user}`);
        res.render("INFOUSER.ejs", { user: req.session.user });
    } else {
        console.log("NESSUN UTENTE IN SESSIONE")
        res.redirect("/login")
    }
})

router.get("/start", (req, res) => {
    if (req.session.user != null) {
        res.render("it/Homepage.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/index", (req, res) => {
    if (req.session.user != null) {
        res.render("it/Index.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})
router.get("/internet", (req, res) => {
    if (req.session.user != null) {
        res.render("it/Internet.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/tipoRete", (req, res) => {
    if (req.session.user != null) {
        res.render("it/tipo-rete.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/servizi", (req, res) => {
    if (req.session.user != null) {
        res.render("it/servizi.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/video", (req, res) => {
    if (req.session.user != null) {
        res.render("it/video.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/opportunita", (req, res) => {
    if (req.session.user != null) {
        res.render("it/opportunità.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/criticita", (req, res) => {
    if (req.session.user != null) {
        res.render("it/criticità.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})


router.get("/approccio", (req, res) => {
    if (req.session.user != null) {
        res.render("it/approccio.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/PCTO", (req, res) => {
    if (req.session.user != null) {
        res.render("eng/PCTO.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/INFO", (req, res) => {
    if (req.session.user != null) {
        res.render("it/INFO.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/Sitografia", (req, res) => {
    if (req.session.user != null) {
        res.render("it/sitografia.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})

router.get("/APPTUTORIAL", (req, res) => {
    res.render("TUTORIAL.ejs", { user: req.session.user })
})

router.get("/UTOvsDIS", (req, res) => {
    if (req.session.user != null) {
        res.render("eng/UTO-VS-DIS.ejs", { user: req.session.user })
    } else {
        res.render("LOGIN.ejs", { error: "USER NON LOGGATO" })
    }
})


module.exports = router;