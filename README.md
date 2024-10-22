# AuthApp - Aplicação de Autenticação com Rails 8

Este é um projeto básico de autenticação de usuários utilizando Ruby on Rails 8 com suporte para TailwindCSS, Turbo, e Stimulus. Ele permite que os usuários se cadastrem, façam login e logout. A segurança é implementada com `bcrypt` para o armazenamento seguro de senhas.

## Funcionalidades

- Registro de usuários
- Login de usuários
- Logout de usuários
- Flash messages para feedback do usuário
- Validações de email e senha

## Tecnologias

- Ruby on Rails 8.0.0
- TailwindCSS (via `tailwindcss-rails`)
- Turbo e Stimulus para atualizações sem recarregar a página
- BCrypt para hashing de senhas

## Pré-requisitos

Certifique-se de que você tem as seguintes dependências instaladas:

- Ruby (>= 3.2.0)
- Rails (>= 8.0.0)
- Node.js (para JavaScript)
- Yarn (gerenciador de pacotes)
- PostgreSQL, SQLite ou outro banco de dados configurado

## Instruções para Rodar o Projeto

### 1. Clonar o Repositório

Clone o projeto para a sua máquina local.

```bash
git clone https://github.com/carlosmotadev/auth_app.git
cd auth_app
bin/dev
