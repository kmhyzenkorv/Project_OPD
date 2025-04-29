<script>
    // 1. Состояние и поля форм
    let isLoginMode = true;
  
    // поля для входа
    let loginEmail = '';
    let loginPassword = '';
  
    // поля для регистрации
    let registerUsername = '';
    let registerEmail = '';
    let registerPassword = '';
    let registerConfirmPassword = '';
  
    // 2. Переключение между входом и регистрацией
    function toggleMode() {
      isLoginMode = !isLoginMode;
    }
  
    // 3. Обработчики форм
    function handleLogin() {
      // Здесь добавить вызов API для авторизации
      console.log('Login:', { email: loginEmail, password: loginPassword });
    }
  
    async function handleRegister() {
      if (registerPassword !== registerConfirmPassword) {
        alert('Пароли не совпадают');
        return;
      }
      const res = await fetch('http://localhost:3000/auth/register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email: registerEmail, password: registerPassword })
      })
      if (res.ok) {
        console.log(res)
      } else {
        console.log(res)
      }
    }
  </script>
  
  <main class="auth-container">
    <div class="auth-card">
      <h2 class="title">
        {#if isLoginMode}Вход в аккаунт{:else}Создать аккаунт{/if}
      </h2>
  
      <form on:submit|preventDefault={isLoginMode ? handleLogin : handleRegister}>
        {#if !isLoginMode}
          <label class="field">
            <span>Имя пользователя</span>
            <input
              type="text"
              bind:value={registerUsername}
              required
              placeholder="Введите имя"
            />
          </label>
        {/if}
  
        <label class="field">
          {#if isLoginMode}
          <label class="field">
            <span>Email</span>
            <input
              type="email"
              bind:value={loginEmail}
              required
              placeholder="example@mail.com"
            />
          </label>
        {:else}
          <label class="field">
            <span>Email</span>
            <input
              type="email"
              bind:value={registerEmail}
              required
              placeholder="example@mail.com"
            />
          </label>
        {/if}
        </label>
  
        <label class="field">
          {#if isLoginMode}
          <label class="field">
            <span>Пароль</span>
            <input
              type="password"
              bind:value={loginPassword}
              required
              minlength="6"
              placeholder="Минимум 6 символов"
            />
          </label>
        {:else}
          <label class="field">
            <span>Пароль</span>
            <input
              type="password"
              bind:value={registerPassword}
              required
              minlength="6"
              placeholder="Минимум 6 символов"
            />
          </label>
          <!-- поле «Повтор пароля» остаётся внутри этого же {:else}-блока -->
        {/if}
        </label>
  
        {#if !isLoginMode}
          <label class="field">
            <span>Повтор пароля</span>
            <input
              type="password"
              bind:value={registerConfirmPassword}
              required
              minlength="6"
              placeholder="Повторите пароль"
            />
          </label>
        {/if}
  
        <button type="submit" class="btn-primary">
          {#if isLoginMode}Войти{:else}Зарегистрироваться{/if}
        </button>
      </form>
  
      <button type="button" class="btn-toggle" on:click={toggleMode}>
        {#if isLoginMode}
          Нет аккаунта? Зарегистрироваться
        {:else}
          Уже есть аккаунт? Войти
        {/if}
      </button>
    </div>
  </main>
  
  <style>
    /* Корневые стили */
    :global(body) {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #eaf2ff; /* светло-голубой фон */
    }
  
    /* Контейнер по центру */
    .auth-container {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }
  
    /* Карточка формы */
    .auth-card {
      background: #ffffff;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      padding: 2rem;
      width: 400px;
    }
  
    .title {
      margin: 0 0 1.5rem;
      text-align: center;
      color: #1e3a8a; /* глубокий синий */
      font-size: 1.5rem;
    }
  
    /* Поля ввода */
    .field {
      display: block;
      margin-bottom: 1rem;
    }
    .field span {
      display: block;
      margin-bottom: 0.25rem;
      color: #1e3a8a;
      font-size: 0.9rem;
    }
    .field input {
      width: 100%;
      padding: 0.5rem;
      border: 1px solid #cbd5e1;
      border-radius: 4px;
      font-size: 1rem;
    }
    .field input:focus {
      outline: none;
      border-color: #1e3a8a;
    }
  
    /* Основная кнопка */
    .btn-primary {
      width: 100%;
      padding: 0.75rem;
      background: #1e3a8a;
      color: #ffffff;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      cursor: pointer;
      margin-top: 0.5rem;
    }
    .btn-primary:hover {
      background: #162c6a;
    }
  
    /* Кнопка переключения */
    .btn-toggle {
      margin-top: 1rem;
      background: transparent;
      border: none;
      color: #1e3a8a;
      font-size: 0.9rem;
      cursor: pointer;
      text-decoration: underline;
    }
    .btn-toggle:hover {
      color: #162c6a;
    }
  </style>
  