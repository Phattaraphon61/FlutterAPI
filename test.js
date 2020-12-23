// var MongoClient = require('mongodb').MongoClient;
// MongoClient.connect('mongodb://localhost:27017', (err, client) => {
//   // Client returned
//   var db = client.db('flutter');
// });

// const collection = db.collection('test')
// collection.insertOne({name: '55555'}, (err, result) => {

// })

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
  const db = client.db('flutter')
  const collection = db.collection('test')
  collection.insertOne({name: 'Roger'}, (err, result) => {

})
})