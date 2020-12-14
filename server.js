const express = require('express');
var cors = require('cors')
const app = express();
app.use(express.json());
app.use(cors())

app.get('/', (req, res) => {
    res.send('Hello');
});
app.post('/api', (req, res) => {
    console.log(req.body)
    res.send(`${req.body.userId}`);
});

const port = process.env.PORT || 3000
app.listen(port, () => console.log(`Listening on port${port}...`) );