var express = require('express');

// Constants
var PORT = 5000;

// App
var app = express();
app.get('/api', function (req, res) {
  //res.send('Hello world\n');
  res.sendFile(__dirname + '/index.html');
});

app.listen(PORT);

console.log('Running on http://localhost:' + PORT);
