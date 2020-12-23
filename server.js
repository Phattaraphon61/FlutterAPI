const express = require('express');
var cors = require('cors')
const app = express();
app.use(express.json());
app.use(cors())
const mongo = require('mongodb').MongoClient
const url = 'mongodb://localhost:27017'
mongo.connect(url, {
    useNewUrlParser: true,
    useUnifiedTopology: true
}, (err, client) => {
    if (err) {
        console.error(err)
        return
    }
    //   const db = client.db('flutter')
    //   const collection = db.collection('test')
    //   collection.insertOne({name: 'Roger'}, (err, result) => {

    // })
})
app.get('/', (req, res) => {
    mongo.connect(url, {
        useNewUrlParser: true,
        useUnifiedTopology: true
    }, (err, client) => {
        if (err) {
            console.error(err)
            return
        }
        const db = client.db('flutter')
        const collection = db.collection('test')
        //   collection.insertOne({name: '55555'}, (err, result) => {

        // })
    })
    res.send('Hello55555');
});
app.post('/api', (req, res) => {
    var tt = [];
    mongo.connect(url, {
        useNewUrlParser: true,
        useUnifiedTopology: true
    }, (err, client) => {
        if (err) {
            console.error(err)
            return
        }
        const db = client.db('flutter')
        const collection = db.collection('test')
        collection.find().toArray((err, items) => {
            res.send(items)
        })
    })


    // res.send("dddd");
});

const port = process.env.PORT || 3000
app.listen(port, () => console.log(`Listening on port${port}...`));