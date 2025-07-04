import { v4 as uuidv4 } from "uuid";

let pedidos = [];

export const createPedido = (req, res) => {
  const pedido = req.body;

  pedidos.push({ id: uuidv4(), ...pedido });

  res.send(`Pedido com id ${pedido.id} adicionado!`);
};

export const getPedidos = (req, res) => {
  res.send(pedidos);
};

export const getPedidoById = (req, res) => {
  const { id } = req.params;

  const foundPedido = pedidos.find((pedido) => pedido.id == id);

  if (foundPedido) {
    res.send(foundPedido);
  } else {
    res.send("Pedido nao encontrado");
  }
};

export const deletePedido = (req, res) => {
  const { id } = req.params;

  pedidos = pedidos.filter((pedido) => pedido.id != id);

  res.send(`Pedido com id ${id} deletado`);
};

export const updatePedido = (req, res) => {
  const { id } = req.params;
  const { mesa, total, status, itensPedido } = req.body;

  const pedido = pedidos.find((pedido) => pedido.id == id);

  if (mesa) pedido.mesa = mesa;

  if (total) pedido.total = total;

  if (status) pedido.status = status;

  if (itensPedido) pedido.itensPedido = itensPedido;

  res.send(`pedido com id ${id} atualizado`);
};
