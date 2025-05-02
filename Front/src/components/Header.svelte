<header>
    <div class="logo">Мой Магазин</div>
    <ul class="nav-links">
      <li><a href="/">Главная</a></li>
      <li><a href="/categories">Категории</a></li>
      <li><a href="/basket">Корзина</a></li>
      <li><a href="/cabinet">Личный кабинет</a></li>
    </ul>
  </header>
<style>
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
</style>