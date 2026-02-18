const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.json({
    message: 'Hello from DevOps pipeline!',
    env: process.env.ENV || 'local'
  });
});

app.listen(port, () => console.log(`Listening on ${port}`));
