<header>
    <div class="logo">Мой Магазин</div>
    <ul class="nav-links">
      <li><a href="/">Главная</a></li>
      <li><a href="#">Категории</a></li>
      <li><a href="#">Корзина</a></li>
      <li><a href="/cabinet">Личный кабинет</a></li>
    </ul>
  </header>
  <main>
    <div class="category-header">
      <h1>Категория: Электроника</h1>
      <p class="category-desc">
        Самая популярная современная электроника для дома и офиса.
      </p>
    </div>
    <div class="product-list">
      {#each categoryProducts as product}
        <div class="product-card">
          <div class="product-image">
            <img src="https://placehold.co/200x140/png?text=Фото" alt="{product.name}" />
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
  
    body {
      font-family: var(--font-main);
      background: var(--main-bg);
      margin: 0;
      padding: 0;
      min-height: 100vh;
      color: #252525;
    }
  
    header {
      background: var(--accent);
      box-shadow: var(--shadow-1);
      padding: 18px 32px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      border-bottom-left-radius: var(--border-radius);
      border-bottom-right-radius: var(--border-radius);
      margin-bottom: 20px;
      color: #fff;
    }
  
    .logo {
      font-size: 2rem;
      font-weight: 600;
      color: #fff;
      letter-spacing: 1px;
      text-shadow: 0 2px 8px rgba(0,0,0,0.11);
    }
  
    .nav-links {
      display: flex;
      list-style: none;
      gap: 28px;
      margin: 0;
      padding: 0;
    }
    .nav-links a {
      text-decoration: none;
      color: #fff;
      font-weight: 500;
      font-size: 1.03rem;
      padding: 7px 18px;
      border-radius: 14px;
      transition: var(--transition);
    }
    .nav-links a:hover {
      background: var(--gold);
      color: #226a95;
      box-shadow: 0 1px 7px rgba(255,215,0,0.15);
    }
  
    main {
      max-width: 1120px;
      margin: auto;
    }
  
    .category-header {
      text-align: left;
      margin-bottom: 16px;
      margin-top: 14px;
      padding-left: 8px;
    }
    .category-header h1 {
      font-size: 2rem;
      font-weight: 700;
      color: var(--accent);
      letter-spacing: 1px;
      margin: 0 0 8px 0;
      text-shadow: 0 2px 6px rgba(56,154,211,0.05);
    }
    .category-desc {
      color: #466389;
      font-size: 1.08rem;
      margin-bottom: 4px;
    }
  
    .product-list {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 32px 28px;
      padding: 20px 8px 28px 8px;
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
      .category-header { padding-left: 2vw; }
      .product-list { grid-template-columns: 1fr; }
      header, .footer { padding-left: 3vw; padding-right: 3vw; }
      .product-card { min-height: 260px; padding: 20px 7px 16px 7px; }
      .product-image img { width: 95%; height: 120px; }
    }
  </style>
  