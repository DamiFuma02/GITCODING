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










module.exports = router;