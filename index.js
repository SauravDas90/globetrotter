'use strict';

const app = require('./src/app');
const port = process.env.PORT || 3100;

app.listen(port, () => {
  console.log("Listening on port " + port);
});