import express from 'express';

import { createRestaurante, deleteRestaurante, getRestaurantes, getRestauranteById, updateRestaurante } from '../controllers/restaurantes.js';

const router = express.Router();

router.get('/', getRestaurantes); 

router.post('/', createRestaurante);

router.get('/:id', getRestauranteById);

router.delete('/:id', deleteRestaurante);

router.patch('/:id', updateRestaurante);

export default router;