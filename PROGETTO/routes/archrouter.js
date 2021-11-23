//viene usata per gestire le route delle pagine derivanti da Architettura.ejs
var express = require("express");
var path = require("path");
var app = express()
var router = express.Router();
app.set('view-engine', "ejs");
app.set("views", path.join(__dirname, "views"));












module.exports = router;