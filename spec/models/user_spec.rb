require 'rails_helper'

RSpec.describe User, type: :model do
  it "é válido com email e senha válidos" do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end

  it "é inválido sem um email" do
    user = FactoryBot.build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "é inválido com um email duplicado" do
    FactoryBot.create(:user, email: "teste@example.com")
    user = FactoryBot.build(:user, email: "teste@example.com")
    expect(user).to_not be_valid
  end

  it "é inválido com uma senha curta" do
    user = FactoryBot.build(:user, password: "12345", password_confirmation: "12345")
    expect(user).to_not be_valid
  end
end
