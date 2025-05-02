<script>import Header from "../components/Header.svelte";

let products = [
    { id: 1, name: "Товар 1", price: 1000, description: "Описание товара 1" },
    { id: 2, name: "Товар 2", price: 2000, description: "Описание товара 2" },
    { id: 3, name: "Товар 3", price: 3000, description: "Описание товара 3" },
    { id: 4, name: "Товар 4", price: 4000, description: "Описание товара 4" },
    { id: 1, name: "Товар 1", price: 1000, description: "Описание товара 1" },
    { id: 2, name: "Товар 2", price: 2000, description: "Описание товара 2" },
    { id: 3, name: "Товар 3", price: 3000, description: "Описание товара 3" },
    { id: 4, name: "Товар 4", price: 4000, description: "Описание товара 4" },
    { id: 1, name: "Товар 1", price: 1000, description: "Описание товара 1" },
    { id: 2, name: "Товар 2", price: 2000, description: "Описание товара 2" },
    { id: 3, name: "Товар 3", price: 3000, description: "Описание товара 3" },
    { id: 4, name: "Товар 4", price: 4000, description: "Описание товара 4" },
    { id: 1, name: "Товар 1", price: 1000, description: "Описание товара 1" },
    { id: 2, name: "Товар 2", price: 2000, description: "Описание товара 2" },
    { id: 3, name: "Товар 3", price: 3000, description: "Описание товара 3" },
    { id: 4, name: "Товар 4", price: 4000, description: "Описание товара 4" },
    { id: 1, name: "Товар 1", price: 1000, description: "Описание товара 1" },
    { id: 2, name: "Товар 2", price: 2000, description: "Описание товара 2" },
    { id: 3, name: "Товар 3", price: 3000, description: "Описание товара 3" },
    { id: 4, name: "Товар 4", price: 4000, description: "Описание товара 4" },  ];
    </script>

<Header/>
  <main>
    <h1>Добро пожаловать в наш магазин!</h1>
    <div class="product-list">
      {#each products as product}
        <div class="product-card">
          <div class="product-image">
            <img src="https://placehold.co/200x140/png?text=Фото" alt="Фото товара" />
          </div>
          <h2>{product.name}</h2>
          <p class="price">Цена: <span>{product.price} руб.</span></p>
          <p class="desc">{product.description}</p>
          <button>Добавить в корзину</button>
        </div>
      {/each}
    </div>
  </main>
  <footer class="footer">
    <p>Все права защищены &copy; 2025 Мой Магазин</p>
  </footer>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" />
  <style>
    :root {
      --main-bg: linear-gradient(135deg, #f7fafc 0%, #e2ebf7 100%);
      --card-bg: #fff;
      --accent: #389ad3;
      --accent-dark: #226a95;
      --gold: #FFD700;
      --shadow-1: 0 2px 14px 0 rgba(56, 154, 211, 0.12), 0 1.5px 9px 0 rgba(30, 84, 154, 0.06);
      --border-radius: 18px;
      --transition: 0.25s all cubic-bezier(0.4, 0.2, 0.2, 1);
      --font-main: 'Montserrat', Arial, sans-serif;
    }
  
    main {
      max-width: 1120px;
      margin: auto;
    }
    main h1 {
      text-align: center;
      font-size: 2.2rem;
      font-weight: 700;
      margin: 24px 0 10px 0;
      color: var(--accent);
      letter-spacing: 1px;
      text-shadow: 0 2px 6px rgba(56,154,211,0.05);
    }
  
    .product-list {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 32px 28px;
      padding: 32px 8px 28px 8px;
    }
    .product-card {
      background: var(--card-bg);
      border-radius: var(--border-radius);
      box-shadow: var(--shadow-1);
      padding: 28px 18px 22px 18px;
      display: flex;
      flex-direction: column;
      align-items: center;
      transition: var(--transition);
      position: relative;
      min-height: 350px;
    }
    .product-card:hover {
      transform: translateY(-7px) scale(1.03);
      box-shadow: 0 6px 28px 0 rgba(56,154,211,0.20);
      border: 1.5px solid var(--accent);
    }
    .product-image img {
      width: 200px;
      height: 140px;
      object-fit: cover;
      border-radius: 14px;
      box-shadow: 0 2px 10px rgba(50,85,120,0.07);
      margin-bottom: 14px;
      background: #e2ebf7;
    }
    .product-card h2 {
      font-size: 1.22rem;
      font-weight: 600;
      color: var(--accent-dark);
      margin: 0 0 7px 0;
      text-shadow: 0 2px 6px rgba(56,154,211,0.03);
    }
    .product-card .price {
      font-size: 1.1rem;
      color: #222;
      margin: 0 0 6px 0;
      font-weight: 500;
    }
    .product-card .price span {
      color: var(--gold);
      font-weight: 700;
      font-size: 1.2rem;
      letter-spacing: 0.5px;
    }
    .product-card .desc {
      font-size: 0.97rem;
      color: #555;
      margin-bottom: 16px;
      min-height: 40px;
    }
    .product-card button {
      background: var(--accent);
      color: #fff;
      font-size: 1rem;
      font-weight: 600;
      border: none;
      border-radius: 9px;
      padding: 11px 34px;
      cursor: pointer;
      transition: var(--transition);
      margin-top: auto;
      box-shadow: 0 2px 8px 0 rgba(56,154,211,0.11);
      letter-spacing: 0.2px;
      outline: none;
    }
    .product-card button:hover {
      background: var(--gold);
      color: var(--accent-dark);
      transform: translateY(-1.5px) scale(1.05);
      box-shadow: 0 6px 22px 0 rgba(255,215,0,0.20);
    }
  
    .footer {
      background: #ffffffcc;
      padding: 24px 0 27px 0;
      text-align: center;
      box-shadow: 0 -2px 16px rgba(37,60,110,0.03);
      border-top-left-radius: var(--border-radius);
      border-top-right-radius: var(--border-radius);
      margin-top: 42px;
      font-size: 1rem;
      color: #4b6a8f;
    }
  
    @media (max-width: 700px) {
      main { max-width: 99vw; }
      .product-list { grid-template-columns: 1fr; }
      .footer { padding-left: 3vw; padding-right: 3vw; }
      .product-card { min-height: 260px; padding: 20px 7px 16px 7px; }
      .product-image img { width: 95%; height: 120px; }
    }
  </style>
