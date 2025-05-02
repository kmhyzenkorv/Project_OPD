<script>
  import Header from "../../components/Header.svelte";
  import Footer from "../../components/Footer.svelte";
</script>

<Header/>
  <main>
    <section class="basket">
      <h1>Корзина</h1>
      <div class="basket-list">
        <div class="basket-item">
          <img src="https://placehold.co/80x56/png?text=Фото" alt="Фото товара">
          <div class="basket-product-info">
            <div class="basket-product-title">Товар 1</div>
            <div class="basket-product-desc">Описание товара 1</div>
          </div>
          <div class="basket-product-price">1000 руб.</div>
          <div class="basket-product-actions">
            <button>-</button>
            <span class="basket-qty">2</span>
            <button>+</button>
          </div>
          <button class="basket-remove">✖</button>
        </div>
        <div class="basket-summary">
          <div>Итого: <span>5000 руб.</span></div>
          <button class="basket-btn-order">Оформить заказ</button>
        </div>
      </div>
    </section>
  </main>
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
  
    .basket {
  background: var(--main-bg);
  border-radius: var(--border-radius);
  box-shadow: var(--shadow-1);
  padding: 36px 17px 26px 17px;
  margin: 34px auto 0 auto;
  max-width: 780px;
  font-family: var(--font-main);
}
.basket-list {
  display: flex;
  flex-direction: column;
  gap: 17px;
}
.basket-item {
  display: flex;
  align-items: center;
  background: var(--card-bg);
  border-radius: 13px;
  box-shadow: var(--shadow-1);
  padding: 13px 12px;
  gap: 14px;
  position: relative;
}
.basket-item img {
  width: 80px;
  height: 56px;
  object-fit: cover;
  border-radius: 7px;
  background: #e2ebf7;
  margin-right: 10px;
}
.basket-product-info {
  flex: 1;
  display: flex;
  flex-direction: column;
  min-width: 110px;
}
.basket-product-title {
  font-weight: 600;
  color: var(--accent-dark);
  font-size: 1.1rem;
}
.basket-product-desc {
  color: #666;
  font-size: 0.94rem;
  margin-top: 3px;
}
.basket-product-price {
  font-weight: 700;
  color: var(--gold);
  font-size: 1.08rem;
  margin-right: 23px;
  min-width: 89px;
  text-align: right;
}
.basket-product-actions {
  display: flex;
  align-items: center;
  gap: 7px;
}
.basket-product-actions button {
  background: var(--accent);
  color: #fff;
  border: none;
  border-radius: 5px;
  font-size: 1.1rem;
  width: 28px;
  height: 28px;
  cursor: pointer;
  transition: var(--transition);
}
.basket-product-actions button:hover {
  background: var(--gold);
  color: var(--accent-dark);
}
.basket-qty {
  min-width: 22px;
  text-align: center;
  font-size: 1.02rem;
  font-weight: 600;
}
.basket-remove {
  background: none;
  border: none;
  color: #b42b2b;
  font-size: 1.3rem;
  cursor: pointer;
  position: absolute;
  top: 11px;
  right: 12px;
  transition: color 0.17s;
}
.basket-remove:hover {
  color: #e61e1e;
}
.basket-summary {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: var(--card-bg);
  border-radius: 10px;
  box-shadow: var(--shadow-1);
  padding: 17px 22px;
  font-size: 1.13rem;
  font-weight: 600;
}
.basket-summary span {
  color: var(--gold);
  font-size: 1.3rem;
}
.basket-btn-order {
  background: var(--accent);
  color: #fff;
  padding: 11px 34px;
  border-radius: 9px;
  font-size: 1.03rem;
  font-weight: 700;
  border: none;
  cursor: pointer;
  transition: var(--transition);
  margin-left: 15px;
}
.basket-btn-order:hover {
  background: var(--gold);
  color: var(--accent-dark);
}
  </style>
  