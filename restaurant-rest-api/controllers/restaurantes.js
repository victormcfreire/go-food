import { v4 as uuidv4 } from 'uuid';

let restaurantes = [
  {
    id: 1555,
    nome: 'Luigi\'s Pastas',
    imagemBanner:
      'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    imagemIcone:
      'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    taxaEntrega: 5.0,
    tempoEntrega: 10,
    endereco: {
      rua: 'Rua X',
      numero: '000',
      cidade: 'Fortaleza',
      estado: 'CE',
    },
    tags: ['Italiana', 'Japonesa', 'Típica'],
    gruposProdutos: [
      {
        nome: 'Promoções',
        produtos: [
          {
            id: 1100,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1101,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1102,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1103,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1104,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1105,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Entradas',
        produtos: [
          {
            id: 1106,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1107,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1108,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1109,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1110,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1111,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Combos',
        produtos: [
          {
            id: 1112,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1113,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1114,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1115,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1116,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1117,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Guarnições',
        produtos: [
          {
            id: 1118,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1119,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1120,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1121,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1122,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1123,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Saladas',
        produtos: [
          {
            id: 1124,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1125,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1126,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1127,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1128,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1129,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Bebidas',
        produtos: [
          {
            id: 1130,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1131,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1132,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1133,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1134,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1135,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Sobremesas',
        produtos: [
          {
            id: 1136,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1137,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1138,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1139,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1140,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1141,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Extras',
        produtos: [
          {
            id: 1142,
            nome: 'Bacon Egg Cheese Biscuit Meal',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/h-mcdonalds-Bacon-Egg-Cheese-Biscuit-Extra-Value-Meals:1-3-product-tile-desktop?wid=830&hei=516&dpr=off',
            preco: 5.45,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          },
          {
            id: 1143,
            nome: 'Big Breakfast with Hotcakes',
            imagem: '',
            preco: 5.99,
            descricao: 'Descrição pequena teste',
          },
          {
            id: 1144,
            nome: 'Hash Browns',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-HASH-BROWNS-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.46,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.65,
          },
          {
            id: 1145,
            nome: 'Big Breakfast',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/s-mcdonalds-Big-Breakfast-Regular-Size-Biscuit-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 5.69,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 7.0,
          },
          {
            id: 1146,
            nome: 'Apple Pie',
            imagem:
              'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Baked-Hot-Apple-Pie-1:1-3-product-tile-desktop?wid=829&hei=515&dpr=off',
            preco: 1.49,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 3.0,
          },
          {
            id: 1147,
            nome: '2 Cookies',
            imagem:
              'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Chocolate-Chip-Cookie.jpg',
            preco: 1.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
        ],
      },
      {
        nome: 'Drinks',
        produtos: [
          {
            id: 1148,
            nome: 'Blue Curacao Soda',
            imagem:
              'https://images.deliveryhero.io/image/fd-kh/Products/37749.jpg?width=2000',
            preco: 2.21,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.6,
          },
          {
            id: 1149,
            nome: 'Cappuccino',
            imagem:
              'https://images.deliveryhero.io/image/fd-kh/Products/37701.jpg?width=2000',
            preco: 1.91,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.25,
          },
          {
            id: 1150,
            nome: 'Green Tea Latte',
            imagem:
              'https://images.deliveryhero.io/image/fd-kh/Products/37707.jpg?width=2000',
            preco: 2.13,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.5,
          },
          {
            id: 1151,
            nome: 'Americano',
            imagem:
              'https://images.deliveryhero.io/image/fd-kh/Products/37697.jpg?width=2000',
            preco: 1.6,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 1.9,
          },
          {
            id: 1152,
            nome: 'Mocha',
            imagem:
              'https://images.deliveryhero.io/image/fd-kh/Products/37702.jpg?width=2000',
            preco: 2.13,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.6,
          },
          {
            id: 1153,
            nome: 'Strawberry Smoothie',
            imagem:
              'https://images.deliveryhero.io/image/fd-kh/Products/37685.jpg?width=2000',
            preco: 2.29,
            descricao:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            desconto: 2.7,
          },
        ],
      },
    ],
    horarioFuncionamento: [
      {
        diaSemana: 'segunda-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'terça-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'quarta-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'quinta-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'sexta-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'sábado',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'domingo',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
    ],
  },
  {
    id: 1234,
    nome: 'Bacon Master Burguer',
    imagemBanner:
      'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    imagemIcone:
      'https://images.unsplash.com/photo-1572843540747-22eea9bcfa6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    taxaEntrega: 2.0,
    tempoEntrega: 20,
    endereco: {
      rua: 'Rua Norte',
      numero: '111',
      cidade: 'Fortaleza',
      estado: 'CE',
    },
    tags: ['Gourmet', 'Doces', 'Café'],
    gruposProdutos: [
      {
        nome: 'Cafés',
        produtos: [
          {
            id: 1100,
            nome: 'Cappuccino',
            imagem:
              'https://images.unsplash.com/photo-1620052087057-bfd8235f5874?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
            preco: 15.0,
            desconto: 20.0,
            descricao: 'Café',
          },
          {
            id: 1101,
            nome: 'Latte',
            imagem:
              'https://images.unsplash.com/photo-1570968915860-54d5c301fa9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
            preco: 8.0,
            descricao: 'Café',
          },
        ],
      },
      {
        nome: 'Din-dins',
        produtos: [
          {
            id: 1102,
            nome: 'Nutella',
            imagem: '',
            preco: 5.0,
            desconto: 10.0,
            descricao: 'Din-din de nutella',
          },
          {
            id: 1103,
            nome: 'Ninho',
            imagem: '',
            preco: 5.0,
            descricao: 'Din-din de ninho',
          },
        ],
      },
    ],
    horarioFuncionamento: [
      {
        diaSemana: 'segunda-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'terça-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
      {
        diaSemana: 'quarta-feira',
        horarioAbertura: 8.0,
        horarioEncerramento: 20.0,
      },
    ],
  },
];

export const createRestaurante = (req, res) => {
  const restaurante = req.body;

  restaurantes.push({ id: uuidv4(), ...restaurante });

  res.send(`Restaurante com id ${restaurante.id} adicionado!`);
};

export const getRestaurantes = (req, res) => {
  res.send(restaurantes);
};

export const getRestauranteById = (req, res) => {
  const { id } = req.params;

  const foundRestaurante = restaurantes.find(
    (restaurante) => restaurante.id == id
  );

  if (foundRestaurante) {
    res.send(foundRestaurante);
  } else {
    res.send('restaurante nao encontrado');
  }
};

export const deleteRestaurante = (req, res) => {
  const { id } = req.params;

  restaurantes = restaurantes.filter((restaurante) => restaurante.id != id);

  res.send(`Restaurante com id ${id} deletado`);
};

export const updateRestaurante = (req, res) => {
  const { id } = req.params;
  const { nome, banner, icone, endereco, tags, gruposProdutos } = req.body;

  const restaurante = restaurantes.find((restaurante) => restaurante.id == id);

  if (nome) restaurante.nome = nome;

  if (banner) restaurante.banner = banner;

  if (icone) restaurante.icone = icone;

  if (endereco) restaurante.endereco = endereco;

  if (tags) restaurante.tags = tags;

  if (gruposProdutos) restaurante.gruposProdutos = gruposProdutos;

  res.send(`restaurante com id ${id} atualizado`);
};
