<script>
  import Header from "../../components/Header.svelte";
  import Footer from "../../components/Footer.svelte";

    let name = '';
    let orders = '';

    async function AuthInfo() {
      const res = await fetch('http://localhost:3000/auth/login', {
        method: 'POST',
        credentials: 'include',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({email: name})
      })
      if (res.ok) {
        console.log(res)
      } else {
        console.log(res)
      }
      console.log('Login:', {email: name});
    }

    async function Locations() {
      const res = await fetch('http://localhost:3000/locations/getAll', {
        method: 'GET',
        credentials: 'include',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({orders})
      })
      if (res.ok) {
        console.log(res)
      } else {
        console.log(res)
      }
    }
</script>

<style>

.cabinet {
  background: var(--main-bg);
  border-radius: var(--border-radius);
  box-shadow: var(--shadow-1);
  padding: 30px 22px 32px 22px;
  margin: 34px auto 0 auto;
  max-width: 600px;
  font-family: var(--font-main);
}
.user-info {
  background: var(--card-bg);
  border-radius: 14px;
  box-shadow: var(--shadow-1);
  padding: 18px 17px 15px 17px;
  margin-bottom: 21px;
  display: flex;
  flex-direction: column;
  gap: 6px;
}
.cabinet-btn {
  background: var(--accent);
  color: #fff;
  font-weight: 600;
  border: none;
  border-radius: 9px;
  padding: 8px 22px;
  margin-top: 13px;
  cursor: pointer;
  transition: var(--transition);
  align-self: flex-start;
  text-decoration: none;
}
.cabinet-btn:hover {
  background: var(--gold);
  color: var(--accent-dark);
}
.orders-list {
  display: flex;
  flex-direction: column;
  gap: 15px;
}
.order-card {
  background: var(--card-bg);
  border-radius: 11px;
  box-shadow: var(--shadow-1);
  padding: 13px 15px;
  display: flex;
  flex-direction: column;
  font-size: 1.02rem;
}
.order-status {
  font-weight: 700;
  border-radius: 7px;
  padding: 2px 11px;
}
.order-status.delivered {
  color: #1b8500;
  background: #e2ffda;
}
.order-status.process {
  color: #a48500;
  background: #fff8db;
}


</style>

<Header/>
<main>
    <section class="cabinet">
      <h1>Личный кабинет</h1>
      <div class="user-info">
        <div><strong>Имя:</strong> Иван Иванов</div>
        <div><strong>Email:</strong> ivan@example.com</div>
        <div><strong>Телефон:</strong> +7 (900) 123-45-67</div>
        <a href="/edit-profile" class="cabinet-btn">Редактировать профиль</a>
      </div>
      <h2>Мои заказы</h2>
      <div class="orders-list">
        <div class="order-card">
          <div><strong>Заказ №12345</strong></div>
          <div>Дата: 01.05.2025</div>
          <div>Сумма: <span>5000 руб.</span></div>
          <div>Статус: <span class="order-status delivered">Доставлен</span></div>
        </div>
        <div class="order-card">
          <div><strong>Заказ №12344</strong></div>
          <div>Дата: 25.04.2025</div>
          <div>Сумма: <span>2500 руб.</span></div>
          <div>Статус: <span class="order-status process">В обработке</span></div>
        </div>
      </div>
    </section>
  </main>
