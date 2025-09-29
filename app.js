const express = require("express");
const app = express();
const PORT = 80;

app.get("/", (req, res) => {
  res.send("Hello from ECS App!");
});

app.listen(PORT, () => {
  console.log(`App is running on port ${PORT}`);
});
