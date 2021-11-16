const mongoose = require("mongoose")
const passportLocalMongoose = require('passport-local-mongoose');





const reqString = {
    type: String,
    required: true
}

const Schema = mongoose.Schema

const UserSchema = new Schema({
    username: reqString,
    email: reqString,
    password: reqString,
})

UserSchema.plugin(passportLocalMongoose)

module.exports = mongoose.model("USER", UserSchema, "users");
//users è il nome della collection in cui inserire l'oggetto USER