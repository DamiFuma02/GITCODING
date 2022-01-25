//usata per gestire le route dipendenti da index
var express = require("express");
var path = require("path");
var app = express()
var router = express.Router();
app.set('view-engine', "ejs");
app.set("views", path.join(__dirname, "Architettura"));


router.get("/", (req, res) => {
    res.render("index.ejs")
})

router.get("/archElab", (req, res) => {
    res.render("Architettura.ejs")
})


router.get("/Elementi", (req, res) => {
    res.render("elementi/MCD.ejs")
})

router.post("/Elementi", (req, res) => {
    let link = `/Elementi?A=${req.body.A}&B=${req.body.B}`
    res.redirect(link)
})








module.exports = router;