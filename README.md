echo "# AuthApp

## Descrição

Este é um aplicativo de autenticação simples criado com Rails 8, Tailwind CSS, Stimulus, Turbo e BCrypt para gerenciamento de usuários. Ele permite que usuários criem contas, façam login e logout.

## Funcionalidades

- Registro de novos usuários
- Autenticação com email e senha
- Sessões com login/logout
- Flash messages para feedback ao usuário
- Testes de controllers utilizando RSpec

## Configuração e Instalação

### Requisitos

- Ruby 3.x ou superior
- Rails 8.x ou superior
- Node.js e Yarn
- Banco de dados SQLite3 (ou outro de sua preferência)
- Bundler para gerenciar gems

### Passos para rodar o projeto localmente

1. Clone o repositório:

   \`\`\`bash
   git clone https://github.com/seuusuario/auth_app.git
   cd auth_app
   \`\`\`

2. Instale as dependências:

   \`\`\`bash
   bundle install
   \`\`\`

3. Configure o banco de dados:

   \`\`\`bash
   bin/rails db:create db:migrate
   \`\`\`

4. Inicie o servidor:

   \`\`\`bash
   bin/rails server
   \`\`\`

   A aplicação estará disponível em \`http://localhost:3000\`.

## Rodando os Testes

Este projeto utiliza **RSpec** para testes automatizados.

### Como rodar os testes

1. Certifique-se de que as dependências de teste estão instaladas:

   \`\`\`bash
   bundle install
   \`\`\`

2. Rode os testes:

   \`\`\`bash
   bundle exec rspec
   \`\`\`

### O que foi testado

Os seguintes casos de uso foram cobertos pelos testes:

1. **RegistrationsController**:
   - Criação de um novo usuário com dados válidos.
   - Falha ao tentar criar um usuário com dados inválidos, renderizando a página de cadastro.

2. **SessionsController**:
   - Login com credenciais válidas, redirecionando para a página inicial.
   - Falha no login com credenciais inválidas, renderizando a página de login.

Os testes de controller verificam se as ações estão funcionando conforme o esperado, como criar usuários e gerenciar sessões, garantindo que o comportamento do sistema esteja correto." > README.md

