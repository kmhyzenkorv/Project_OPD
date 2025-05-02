<script>
  import Header from "../../components/Header.svelte";
  import Footer from "../../components/Footer.svelte";


    let categories = [
      {
        name: 'Электроника',
        desc: 'Гаджеты, смартфоны, аксессуары — только лучшее.',
        icon: 'https://img.icons8.com/color/48/000000/smartphone-tablet.png',
        color: '#389ad3',
        products: [
          { name: "Смартфон Galaxy X", price: 32000, description: "Безрамочный флагман с мощной камерой." },
          { name: "Беспроводные наушники AirPro", price: 4900, description: "3D-звук и чистота передачи голоса." },
          { name: "Фитнес-браслет SmartFit", price: 3150, description: "Точный мониторинг здоровья." }
        ]
      },
      {
        name: 'Одежда',
        desc: 'Одежда для любого случая: комфорт, тренды и уют.',
        icon: 'https://img.icons8.com/color/48/000000/t-shirt--v2.png',
        color: '#ffab40',
        products: [
          { name: "Футболка Classic", price: 1100, description: "100% хлопок, разные цвета." },
          { name: "Джинсы Urban", price: 3300, description: "Вечная классика с современным кроем." },
          { name: "Кроссовки Sport Lite", price: 5900, description: "Легкие и стильные, для города и фитнеса." }
        ]
      },
      {
        name: 'Книги',
        desc: 'Самые вдохновляющие истории и нон-фикшн.',
        icon: 'https://img.icons8.com/color/48/000000/open-book--v2.png',
        color: '#aed581',
        products: [
          { name: "Думай медленно... решай быстро", price: 700, description: "Бестселлер по психологии принятия решений." },
          { name: "Атлант расправил плечи", price: 1200, description: "Эпическая классика бизнеса." },
          { name: "Сам себе финансист", price: 980, description: "Деньги и успех понятными словами." }
        ]
      },
      {
        name: 'Дом',
        desc: 'Для уюта, организации и вдохновения каждый день.',
        icon: 'https://img.icons8.com/color/48/000000/home--v2.png',
        color: '#90caf9',
        products: [
          { name: "Термокружка Soft Touch", price: 560, description: "Сохраняет тепло 6 часов, приятный материал." },
          { name: "Светильник Lumi", price: 1890, description: "Сенсорное управление, 3 режима." },
          { name: "Декоративная подушка Cozy", price: 750, description: "Добавит мягкости вашему интерьеру." }
        ]
      }
    ];
  </script>
  
  <div class="shop-container">
    <Header/>
  
    <main>
      <section id="categories-section">
        <h1>Категории товаров</h1>
        <div class="category-list">
          {#each categories as cat}
            <div class="category-card">
              <div class="cat-icon" style="background:{cat.color}">
                <img src={cat.icon} alt="{cat.name} категория" />
              </div>
              <div class="cat-title">{cat.name}</div>
              <div class="cat-desc">{cat.desc}</div>
            </div>
          {/each}
        </div>
      </section>
  
      {#each categories as category}
        <section class="category-section">
          <div class="category-header">
            <h2>{category.name}</h2>
            <p class="category-desc">{category.desc}</p>
          </div>
          <div class="product-list">
            {#each category.products as product}
              <div class="product-card">
                <div class="product-image">
                  <img src="https://placehold.co/200x140/png?text=Фото" alt="{product.name}" />
                </div>
                <h3>{product.name}</h3>
                <p class="price">Цена: <span>{product.price} руб.</span></p>
                <p class="desc">{product.description}</p>
                <button disabled>Недоступно</button>
              </div>
            {/each}
          </div>
        </section>
      {/each}
    </main>
  </div>
  <Footer/>
  
  
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
    #categories-section {
      margin-top: 36px;
      text-align: center;
    }
    #categories-section h1 { 
      font-size: 2.1rem; 
      margin-bottom: 36px; 
      color: var(--accent);
    }
    .category-list {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 36px;
      padding: 10px 0 40px 0;
    }
    .category-card {
      background: var(--card-bg);
      border-radius: var(--border-radius);
      box-shadow: var(--shadow-1);
      padding: 30px 30px 26px 30px;
      width: 215px;
      text-align: center;
      cursor: pointer;
      transition: var(--transition);
      position: relative;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .category-card:hover {
      transform: translateY(-7px) scale(1.04);
      border: 2px solid var(--accent);
      box-shadow: 0 6px 28px 0 rgba(56,154,211,0.17);
    }
    .cat-icon {
      width: 64px; height: 64px;
      border-radius: 50%;
      margin: 0 auto 10px auto;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 2px 12px rgba(90,140,200,0.11);
    }
    .cat-icon img {
      width: 44px; height: 44px;
    }
    .cat-title {
      font-size: 1.16rem;
      font-weight: 600;
      margin: 13px 0 6px 0;
      color: var(--accent-dark);
    }
    .cat-desc {
      font-size: 0.96rem;
      color: #5771a8;
      opacity: 0.8;
      margin-bottom: 6px;
    }
    .category-header {
      text-align: left;
      margin-bottom: 18px;
      margin-top: 8px;
      padding-left: 8px;
      position: relative;
    }
    
    .category-desc {
      color: #466389;
      font-size: 1.05rem;
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
    @media (max-width: 900px) {
      .category-list { flex-wrap: wrap; gap: 28px; }
      .category-card { width: 95vw; max-width: 300px; }
    }
    @media (max-width: 700px) {
      main { max-width: 99vw; }
      .category-header { padding-left: 2vw; }
      .product-list, .category-list { grid-template-columns: 1fr; flex-direction: column; gap:20px;}
      header, .footer { padding-left: 3vw; padding-right: 3vw; }
      .product-card { min-height: 260px; padding: 20px 7px 16px 7px; }
      .product-image img { width: 95%; height: 120px; }
    }
  </style>
  