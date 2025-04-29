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
    <h1>Добро пожаловать в наш магазин!</h1>
    <div class="product-list">
        {#each products as product}
            <div class="product-card">
                <h2>{product.name}</h2>
                <p>Цена: {product.price} руб.</p>
                <p>{product.description}</p>
                <button>Добавить в корзину</button>
            </div>
        {/each}
    </div>
</main>

<footer class="footer">
    <p>Все права защищены &copy; 2025 Мой Магазин</p>
</footer>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    header {
        background-color: #389ad3;
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
    .product-list {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        gap: 20px;
        padding: 20px;
    }
    .product-card {
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        padding: 20px;
        text-align: center;
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

<script>
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
        { id: 4, name: "Товар 4", price: 4000, description: "Описание товара 4" },  
    ];
</script>