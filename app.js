const http = require('http');

const port = 3000;

const server = http.createServer((req, res) =>
{
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hola Derian');
});

server.listen(port, () =>
{
    console.log(`El servidor se está ejecutando en http://localhost:${port}/`);
});