require 'rails_helper'

RSpec.describe Product, type: :model do

  describe "validates" do
    context "Validates name, price, quantity, category" do
      it "returns name" do
        category = Category.create(name: "flowers")
        product = Product.create(name: "lily", price_cents: 9999, quantity: 99, category_id: category.id)
        expect(product).to be_valid
      end
    end

    context "Validates name & presence" do
      it "returns name" do
        category = Category.create(name: "flowers")
        product = Product.create(name: "", price_cents: 9999, quantity: 99, category_id: category.id)
        expect(product).to_not be_valid
        # puts product.errors.full_messages
        expect(product.errors.full_messages).to include("Name can't be blank")
      end
    end
  
    context "Validates price & presence" do
      it "returns price" do
        category = Category.create(name: "flowers")
        product = Product.create(name: "lily", price_cents: nil, quantity: 99, category_id: category.id)
        expect(product).to_not be_valid
        # puts product.errors.full_messages
        expect(product.errors.full_messages).to include("Price can't be blank")
      end
    end

    it "Validates Quantity & presence" do
      product = Product.new(quantity: nil)
      expect(product).to_not be_valid
     end

     it "Validates category & presence" do
      product = Product.new(category: nil)
      expect(product).to_not be_valid
    end

  end
end
