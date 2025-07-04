import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';

import restaurantesRoutes from './routes/restaurantes.js';
import pedidosRoutes from './routes/pedidos.js'; 

const app = express();
const PORT = 3000;

app.use(cors());
app.all('*', function (req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, PATCH, DELETE, OPTIONS');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

app.use(bodyParser.json());

app.use('/restaurantes', restaurantesRoutes);
app.use('/pedidos', pedidosRoutes);

app.get('/', (req, res) => res.send('Base Url'));
app.all("*", (req, res) =>res.send("You've tried reaching a route that doesn't exist."));


app.listen(PORT, () => console.log(`Server running on port: http://localhost:${PORT}`));