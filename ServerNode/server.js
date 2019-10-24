const express = require('express')
const bodyParser = require('body-parser')
var db = require('./model/database')


const cors = require('cors')

var app = express();

app.use(bodyParser.json())
app.use(cors())
var promise1 = new Promise(function (resolve, reject) {
    db.connect((result, err) => {
        if (err) {
            console.error('Error connecting: ' + err.stack);
            return;
        }
        console.log('Connected as id ' + result.threadId);
        resolve(result)
    })
});

promise1.then((result)=>{

    app.use(require('./routes/Router'))

})



app.listen(9090, () => {
    console.log("Server is started with port: 9090")
})