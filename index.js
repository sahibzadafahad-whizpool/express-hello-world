var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Hello this code will auto deploy on server through GitHub Actions1')
})

app.listen(3000, function () {
  console.log('Listening on port 3000...')
})
