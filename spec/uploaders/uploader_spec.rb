require 'rails_helper'

RSpec.describe ImageUploader do
    let(:image)       { product.image }
    let(:product)       { Product.create(image: File.open("app/assets/images/slide_1.png", "rb")) }
   
    it "extracts metadata" do
      expect(image.extension).to eq("png")
    end
   
  end