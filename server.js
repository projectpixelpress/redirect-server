const express = require('express');
const app = express();

const destination = process.env.DESTINATION;
const port = 8888;

app.get('/', (req, res) => res.redirect(destination));

app.listen(port, () => console.log(`Listening on port ${port}`));
