var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Hello this is our lab assesment project!')
})

app.listen(3000, function () {
  console.log('Listening on port 3000...')
})
