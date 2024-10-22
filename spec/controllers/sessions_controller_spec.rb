require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }

  describe "POST #create" do
    context "com credenciais válidas" do
      it "loga o usuário e redireciona para a root path" do
        post :create, params: { email: user.email, password: "password123" }
        expect(session[:user_id]).to eq(user.id)
        expect(response).to redirect_to(root_path)
      end
    end

    context "com credenciais inválidas" do
      it "não loga o usuário e renderiza a página de login" do
        post :create, params: { email: user.email, password: "wrongpassword" }
        expect(session[:user_id]).to be_nil
        expect(response).to render_template(:new)
        expect(flash[:alert]).to eq("Email ou senha inválidos!")
      end
    end
  end

  describe "DELETE #destroy" do
    it "desloga o usuário e redireciona para a root path" do
      session[:user_id] = user.id
      delete :destroy
      expect(session[:user_id]).to be_nil
      expect(response).to redirect_to(root_path)
      expect(flash[:notice]).to eq("Deslogado com sucesso!")
    end
  end
end
