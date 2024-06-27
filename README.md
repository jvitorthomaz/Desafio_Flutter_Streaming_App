
<h1 align="center">Desafio - Streaming App</h1>

---

<h2>Tópicos 📋</h2>

   <p>

   - [📖 Sobre](#-sobre)
   - [📱 Preview](#-preview)
   - [🛠️ Funcionalidades e Tecnologias](#-funcionalidades-e-tecnologias-estudadas)
   - [🛠️ GitFlow](#-GitFlow)
   - [🤔 Como usar](#-como-usar)

   </p>

---

<h2>📖 Sobre</h2>

<p>
    Projeto desenvolvido para como etrapa do processo seletivo para vaga de Desenvolvedor Mobile
</p>


---  

<h2>🛠️ Funcionalidades e Tecnologias </h2>


- Consulta da API usando o package Dio
- RiverPod como Gerenciamento de Estado
- Fluxo de Login e Logout com a aplicação
- Persistência de dados com o SharedPreferences
- Providers

- Telas: 
  - Splash (tela inicial do app para transição)
  - Login (onde possui o fluxo de login)
  - Register (onde possui o fluxo de cadastro)
  - Home (tela principal do app)

SDK: 
  - [dart sdk] = 3.22.2


Principais packages utilizados:
  - [flutter_riverpod] - 3.0.0 https://pub.dev/packages/flutter_riverpod
  - [riverpod_annotation] - 3.0.0 (https://pub.dev/packages/riverpod_annotation)
  - [riverpod_lints] - 3.0.0 (https://pub.dev/packages/riverpod_lint)
  - [riverpod_generator] - 3.0.0 (https://pub.dev/packages/riverpod_generator)
  - [dio] - 5.4.3+1 (https://pub.dev/packages/dio)
  - [pretty_dio_logger] - 1.3.1 (https://pub.dev/packages/pretty_dio_logger)
  - [asyncstate] - 2.1.0 (https://pub.dev/packages/asyncstate)
  - [top_snackbar_flutter] - 3.1.0 (https://pub.dev/packages/top_snackbar_flutter)
  - [shared_preferences] - 2.2.3 (https://pub.dev/packages/shared_preferences)
  - [validatorless] - 1.2.3 (https://pub.dev/packages/validatorless)

Integração com Firebase:
  - Firebase authentication: Para funcinalidades de autenticação
  - Firebase Cloud Storage: Para funcinalidade de armazenamento de imagens


<h2>🛠️ GitFlow</h2>

Branches criadas durante o desenvolvimento:
  - main
  - homolog
  - development
  - feat/splash-screen
  - feat/login-screen
  - feat/forgot-password-screen
  - feat/register-user-screen
  - feat/user-profile-screen
  - feat/home-screen


         

<h2>🤔 Como usar</h2>

  ```
   É necessário ter o Flutter instalado. Para configurar o ambiente de desenvolvimento na sua máquina:
   https://flutter.dev/docs/get-started/install


   - Clone o repositório

   - Na raiz do projeto:
    - Instale as dependências:
      $ flutter pub get
    - Em outro terminal, no diretório raiz do projeto, execute:
      $ flutter run
  ```

---
