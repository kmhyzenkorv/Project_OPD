<script>
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
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    header {
        background-color: #ffffff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        padding: 10px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .logo {
        font-size: 24px;
        font-weight: bold;
        color: #333;
    }
    .nav-links {
        display: flex;
        list-style: none;
        gap: 20px;
    }
    .nav-links a {
        text-decoration: none;
        color: #333;
    }
    .main-content {
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
    .profile-section {
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
        width: 100%;
    }
    .profile-section h2 {
        margin-top: 0;
    }
    .profile-info {
        margin-bottom: 10px;
    }
    .footer {
        background-color: #ffffff;
        padding: 20px;
        text-align: center;
        box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
        position: relative;
        bottom: 0;
        width: 100%;
    }
</style>

<header>
    <div class="logo">Мой Магазин</div>
    <ul class="nav-links">
        <li><a href="/">Главная</a></li>
        <li><a href="#">Категории</a></li>
        <li><a href="#">Корзина</a></li>
    </ul>
</header>

<div class="main-content">
    <h1>Личный кабинет</h1>
    
    <div class="profile-section">
        <h2>Информация о профиле</h2>
        <div class="profile-info"><strong>Электронная почта:</strong> {name}</div>
    </div>

    <div class="profile-section">
        <h2>История заказов</h2>
        <ul>
            {#each orders as order}
                <li>Заказ #{order.id} - {order.date} - Статус: {order.status}</li>
            {/each}
        </ul>
    </div>
</div>

<footer class="footer">
    <p>Все права защищены &copy; 2025 Мой Магазин</p>
</footer>
