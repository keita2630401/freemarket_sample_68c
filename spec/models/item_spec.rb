require 'rails_helper'

describe Item do
  describe '#create' do
    # 1. nameとdescription、conditionとshipping_cost_sideとorigin_areaとshipping_daysとpriceが存在すれば登録できること
    it "is valid with name, description, condition, shipping_cost_side, origin_area, shipping_days, price" do
      item = build(:item)
      expect(item).to be_valid
    end

    # 2. nameが空では登録できないこと
    it "is invalid without a name" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    # 3. descriptionが空では登録できないこと
    it "is invalid without a description" do
      item = build(:item, description: nil)
      item.valid?
      expect(item.errors[:description]).to include("can't be blank")
    end

    # 4. conditionが空では登録できないこと
    it "is invalid without a condition" do
      item = build(:item, condition: nil)
      item.valid?
      expect(item.errors[:condition]).to include("can't be blank")
    end

    # 5. shipping_cost_sideが空では登録できないこと
    it "is invalid without a shipping_cost_side" do
      item = build(:item, shipping_cost_side: nil)
      item.valid?
      expect(item.errors[:shipping_cost_side]).to include("can't be blank")
    end

    # 6. origin_areaが空では登録できないこと
    it "is invalid without an origin_area" do
      item = build(:item, origin_area: nil)
      item.valid?
      expect(item.errors[:origin_area]).to include("can't be blank")
    end

    # 7. shipping_daysが空では登録できないこと
    it "is invalid without a shipping_days" do
      item = build(:item, shipping_days: nil)
      item.valid?
      expect(item.errors[:shipping_days]).to include("can't be blank")
    end

    # 8. priceが空では登録できないこと
    it "is invalid without a price" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    # 9. nameが41文字以上であれば登録できないこと
    it "is invalid with a name that has more than 40 characters " do
      item = build(:item, name: "a"*41)
      item.valid?
      expect(item.errors[:name]).to include("is too long (maximum is 40 characters)")
    end
 
    # 10. nameが40文字以下では登録できること
    it "is valid with a name that has less than 40 characters " do
      item = build(:item, name: "a"*40)
      expect(item).to be_valid
    end

    # 11. descriptionが1001文字以上であれば登録できないこと
    it "is invalid with a description that has more than 1001 characters " do
      item = build(:item, description: "a"*1001)
      item.valid?
      expect(item.errors[:description]).to include("is too long (maximum is 1000 characters)")
    end

    # 12. descriptionが1000文字以下では登録できること
    it "is valid with a name that has less than 1000 characters " do
      item = build(:item, description: "a"*1000)
      expect(item).to be_valid
    end
  end
end
