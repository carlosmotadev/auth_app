require 'rails_helper'

RSpec.describe "Rotas", type: :routing do
  it "roteia para a página de login" do
    expect(get: "/sign_in").to route_to("sessions#new")
  end

  it "roteia para o logout" do
    expect(delete: "/logout").to route_to("sessions#destroy")
  end

  it "roteia para a página de cadastro" do
    expect(get: "/sign_up").to route_to("registrations#new")
  end
end
