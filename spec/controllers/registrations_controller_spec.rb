require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  describe "POST #create" do
    context "com dados válidos" do
      it "cria um novo usuário e redireciona para a root path" do
        expect {
          post :create, params: { user: { email: "teste@example.com", password: "password123", password_confirmation: "password123" } }
        }.to change(User, :count).by(1)

        expect(session[:user_id]).to eq(User.last.id)
        expect(response).to redirect_to(root_path)
        expect(flash[:notice]).to eq("Conta criada com sucesso!")
      end
    end

    context "com dados inválidos" do
      it "não cria o usuário e renderiza a página de cadastro" do
        post :create, params: { user: { email: "", password: "123", password_confirmation: "123" } }
        expect(User.count).to eq(0)
        expect(response).to render_template(:new)
      end
    end
  end
end
