<template>
    <div class="login-page" @click.self="$emit('close')">
      <div class="modal-content">
        <button class="close-button" @click="$emit('close')">×</button>
        <h2>Iniciar sesión/Registrarse</h2>
        <p class="security-note">
          <img class="icon-lock" src="@/assets/lock-icon.png" alt="Seguridad" />
          Todos los datos se cifrarán
        </p>
  
        <div class="benefits">
          <div class="benefit">
            <img class="icon-envio-devol" src="@/assets/truck-icon.png" alt="Envío" />
            <div class="benefit-text">
              <p class="benefit-title">Envío gratis</p>
              <p class="benefit-subtitle">En todos los pedidos</p>
            </div>
          </div>
          <div class="benefit">
            <img class="icon-envio-devol" src="@/assets/return-icon.png" alt="Devoluciones" />
            <div class="benefit-text">
              <p class="benefit-title">Devoluciones: 90 días</p>
              <p class="benefit-subtitle">desde la fecha de compra</p>
            </div>
          </div>
        </div>
  
        <div v-if="!showEmailLogin">
          <div class="social-login">
            <button class="social-button google" @click="handleGoogleLogin">
              <img src="@/assets/google-icon.png" alt="Google" /> Continuar con Google
            </button>
            <button class="social-button facebook" @click="handleFacebookLogin">
              <img src="@/assets/facebook-icon.png" alt="Facebook" /> Continuar con Facebook
            </button>
            <button class="social-button apple" @click="handleAppleLogin">
              <img src="@/assets/apple-icon.png" alt="Apple" /> Continuar con Apple
            </button>
            <button class="social-button email" @click="showEmailLogin = true">
              <img src="@/assets/email-icon.png" alt="Email" /> Continuar con Email
            </button>
            <button class="social-button phone" @click="handlePhoneLogin">
              <img src="@/assets/phone-icon.png" alt="Phone" /> Continuar con Número de teléfono
            </button>
          </div>
        </div>
  
        <form v-else @submit.prevent="handleLogin">
          <input type="email" v-model="email" placeholder="Email" required />
          <input type="password" v-model="password" placeholder="Contraseña" required />
          <a href="#" class="forgot-password">¿Olvidaste tu contraseña?</a>
          <button type="submit" class="login-button" :disabled="!isFormValid">Iniciar sesión</button>
          <p v-if="errorMessage" class="error-message">{{ errorMessage }}</p>
        </form>
  
        <p class="terms">
          Al continuar, aceptas nuestros <a href="#">Términos de uso</a> y <a href="#">Política de privacidad</a>.
        </p>
      </div>
    </div>
  </template>
  
  <script>
  import { mapActions } from 'vuex';
  
  export default {
    name: 'LoginComponent',
    data() {
      return {
        email: '',
        password: '',
        showEmailLogin: false,
        errorMessage: '',
      };
    },
    computed: {
      isFormValid() {
        return this.email && this.password;
      },
    },
    methods: {
      ...mapActions(['login']),
      async handleLogin() {
        this.errorMessage = '';
        if (this.isFormValid) {
          try {
            await this.login({ email: this.email, password: this.password });
            this.$emit('close');
            this.$router.push('/'); // Redirige a la página principal después del inicio de sesión
          } catch (error) {
            this.errorMessage = 'Error al iniciar sesión. Por favor, inténtalo de nuevo.';
          }
        } else {
          this.errorMessage = 'Por favor, complete todos los campos.';
        }
      },
      handleGoogleLogin() {
        // Lógica para iniciar sesión con Google
      },
      handleFacebookLogin() {
        // Lógica para iniciar sesión con Facebook
      },
      handleAppleLogin() {
        // Lógica para iniciar sesión con Apple
      },
      handlePhoneLogin() {
        // Lógica para iniciar sesión con número de teléfono
      },
    },
  };
  </script>
  
  <style scoped>
  .login-page {
    display: flex;
    justify-content: center;
    align-items: center;
    position: fixed;
    top: 20px;
    left: 20px;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
  }
  
  .modal-content {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    width: 500px;
    position: relative;
  }
  
  .close-button {
    position: absolute;
    top: 10px;
    right: 10px;
    background: none;
    border: none;
    font-size: 24px;
    cursor: pointer;
  }
  
  h2 {
    margin-bottom: 20px;
    text-align: center;
    font-size: 17px;
    font-weight: bold;
  }
  
  .security-note {
    display: flex;
    align-items: center;
    justify-content: center;
    color: #259a29;
    margin-bottom: 20px;
    font-size: 14px;
  }
  
  .benefits {
    display: flex;
    margin-left: 35px;
    margin-right: 35px;
    justify-content: space-between;
    gap: 20px;
  }
  
  .benefit {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
  }
  
  .icon-lock {
    width: 20px;
    height: 20px;
    margin-right: 10px;
  }
  
  
  .icon-envio-devol {
    width: 50px;
    height: 50px;
    margin-bottom: 10px;
    background-color: #ebeac3;
    border-radius: 50%;
    padding: 5px;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .benefit-title {
      font-weight: bold;
      margin: 0; /* Elimina márgenes innecesarios */
  }
  
  .benefit-subtitle {
    font-size: 0.8em;
  }
  
  .social-login {
    display: flex;
    flex-direction: column;
    align-items: center;
    
  }
  
  .social-button {
    display: flex;
    align-items: center;
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #000000;
    border-radius: 20px;
    background-color: white;
    cursor: pointer;
    font-size: normal;
  }
  
  .social-button img {
    width: 25px;
    height: 25px;
    margin-right: 20px;
    margin-bottom: 10px;
    background-color: #ffffff;
    border-radius: 50%;
    margin: 0; 
    margin-left: 70px;
    margin-right: 10px;
  }
  
  
  .social-button.google {
    
    background-color: #0a57f0; 
    color: white;
    border: none; 
  }
  
  
  form {
    display: flex;
    flex-direction: column;
  }
  
  input {
    margin-bottom: 10px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
  }
  
  .forgot-password {
    text-align: right;
    font-size: 14px;
    color: #1a0dab;
    text-decoration: none;
    margin-bottom: 10px;
  }
  
  .login-button {
    padding: 10px;
    background-color: #ff8c00;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  .terms {
    font-size: 12px;
    text-align: center;
    margin-top: 20px;
  }
  
  .terms a {
    color: #1a0dab;
    text-decoration: none;
  }
  
  .error-message {
    color: red;
    margin-top: 10px;
  }
  </style>
  