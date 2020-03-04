require 'rails_helper'

describe Card do
  describe '#create' do
    # 1. number、exp_month、exp_year、cvcが存在すれば登録できること
    it "is valid with number、exp_month、exp_year、cvc" do
      card = build(:card)
      expect(card).to be_valid
    end
  end
end