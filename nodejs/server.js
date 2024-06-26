const express = require('express');
const app = express();
const port = 3000;

app.use(express.static('public'));

app.get('/data', (req, res) => {
    res.json({ message: 'Data will be here' });
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});

