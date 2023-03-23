require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    let(:product) { build(:product) }

    it "validates numericality of length, width, height, and weight" do
      product.length = "not a number"
      product.width = "not a number"
      product.height = "not a number"
      product.weight = "not a number"
      expect(product).not_to be_valid

      product.length = -1
      product.width = -1
      product.height = -1
      product.weight = -1
      expect(product).not_to be_valid

      product.length = 0
      product.width = 0
      product.height = 0
      product.weight = 0
      expect(product).not_to be_valid

      product.length = 1
      product.width = 1
      product.height = 1
      product.weight = 1
      expect(product).to be_valid
    end
  end
end
