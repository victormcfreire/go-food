import express from 'express';

import { createPedido, getPedidos, getPedidoById, deletePedido, updatePedido } from '../controllers/pedidos.js';

const router = express.Router();

router.get('/', getPedidos);

router.post('/', createPedido);

router.get('/:id', getPedidoById);

router.delete('/:id', deletePedido);

router.patch('/:id', updatePedido);

export default router;