var express = require("express");
var app = express();
var env = require("dotenv").config();
const port = env.parsed.PORT;

app.get("/", function (req, res) {
  res.send({
    msg: "Holle World123123123",
  });
});

app.listen(port, function () {
  console.log(`Server is running on port ${port}!`);
});
