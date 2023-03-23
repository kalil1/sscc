namespace :product do
    desc "Import products from JSON file"
    task import: :environment do
      file_path = "db/products.json"
      products = JSON.parse(File.read(file_path))["products"]
      
      products.each do |product_data|
        p product_data
        product = Product.new(
          name: product_data["name"],
          length: product_data["length"].to_f,
          width: product_data["width"].to_f,
          height: product_data["height"].to_f,
          weight: product_data["weight"].to_f
        )
        
        if product.save
          puts "Product created: #{product.inspect}"
        else
          puts "Error creating product: #{product.errors.full_messages.join(", ")}"
        end
      end
    end
  end
  