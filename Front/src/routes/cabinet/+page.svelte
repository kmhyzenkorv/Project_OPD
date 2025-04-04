<script>
    let name = "Игорь Иванов";
    let email = "igor@example.com";
    let phone = "+7 (999) 123-45-67";
    let address = "г. Москва, ул. Ленина, д. 10";

    let orders = [
        { id: 1, date: "25 марта 2025", status: "Доставлено" },
        { id: 2, date: "1 апреля 2025", status: "В процессе" },
        { id: 3, date: "10 марта 2025", status: "Доставлено" },
    ];

    
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
        <div class="profile-info"><strong>Имя:</strong> {name}</div>
        <div class="profile-info"><strong>Email:</strong> {email}</div>
        <div class="profile-info"><strong>Телефон:</strong> {phone}</div>
        <div class="profile-info"><strong>Адрес:</strong> {address}</div>
        <button class="search-button">Редактировать информацию</button>
    </div>

    <div class="profile-section">
        <h2>История заказов</h2>
        <ul>
            {#each orders as order}
                <li>Заказ #{order.id} - {order.date} - Статус: {order.status}</li>
            {/each}
        </ul>
    </div>

    <div class="profile-section">
        <h2>Настройки безопасности</h2>
        <button class="search-button">Сменить пароль</button>
    </div>
</div>

<footer class="footer">
    <p>Все права защищены &copy; 2025 Мой Магазин</p>
</footer>
