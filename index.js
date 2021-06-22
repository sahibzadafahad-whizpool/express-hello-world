var express = require('express')
var app = express()
app.get('/', function (req, res) {
  res.send('Hello i am testing docker auto build3!')
})

app.listen(3000, function () {
  console.log('Listening on port 3000......jjk')
})
