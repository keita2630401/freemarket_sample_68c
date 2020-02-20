require 'rails_helper'

describe Card do
  describe '#create' do
    # 1. number、exp_month、exp_year、cvcが存在すれば登録できること
    it "is valid with number、exp_month、exp_year、cvc" do
      card = build(:card)
      expect(card).to be_valid
    end

    # 2. numberが空では登録できないこと
    it "is invalid without a number" do
      card = build(:card, number: nil)
      card.valid?
      expect(card.errors[:number]).to include("can't be blank")
    end

    # 3. exp_monthが空では登録できないこと
    it "is invalid without a exp_month" do
      card = build(:card, exp_month: nil)
      card.valid?
      expect(card.errors[:exp_month]).to include("can't be blank")
    end

    # 4. exp_yearが空では登録できないこと
    it "is invalid without a exp_year" do
      card = build(:card, exp_year: nil)
      card.valid?
      expect(card.errors[:exp_year]).to include("can't be blank")
    end

    # 5. cvcが空では登録できないこと
    it "is invalid without a cvc" do
      card = build(:card, cvc: nil)
      card.valid?
      expect(card.errors[:cvc]).to include("can't be blank")
    end
  end
end