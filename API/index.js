const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.json({
    message: "Welcome to Hotel Transylvania",
  });
});

const port = process.env.PORT || 8000;

app.listen(port, () => console.log("Server is running"));
