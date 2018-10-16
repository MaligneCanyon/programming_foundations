# inputs:
# - Hash (query containing price_min, price_max and brand specifications)
# outputs:
# - Array containing selection of Hashes from PRODUCTS array
# reqs:
# - write a method 'search' that accepts a query hash and returns an array containing a subset of the PRODUCTS
#   array
# - the returned array should only contain product hashes that meet the price_min, price_max and brand criteria
#   specified in the query hash
# rules:
# - select product hashes where price between price_min and price_max inclusive
# datastruct:
# - Array
# algo:
# - for each product hash in PRODUCTS
#   - if the value of the product key 'name' contains the value of the query key 'q'
#     - if the value of the product key 'price' is between the values of the query key 'price_min' and
#      'price_max'
#      - select the product hash and store it in an array
# - output the array


PRODUCTS = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
  { name: "Tehinkpad x250", price: 979 },
  { name: "Thinkpad x230", price: 300 },
  { name: "Thinkpad x230", price: 330 },
  { name: "Thinkpad x230", price: 350 },
  { name: "Thinkpad x240", price: 700 },
  { name: "Macbook Leopard", price: 300 },
  { name: "Macbook Air", price: 700 },
  { name: "Macbook Pro", price: 600 },
  { name: "Macbook", price: 1449 },
  { name: "Dell Latitude", price: 200 },
  { name: "Dell Latitude", price: 650 },
  { name: "Dell Inspiron", price: 300 },
  { name: "Dell Inspiron", price: 450 },
]


def search(query_hash)

  # arr = []
  # PRODUCTS.each do |product_hash|
  #   if product_hash[:name].downcase.include?(query_hash[:q])
  #     # puts 'brand found'
  #     if product_hash[:price].between?(query_hash[:price_min], query_hash[:price_max])
  #       # puts 'price range found'
  #       arr << product_hash
  #     end
  #   end
  # end

  arr = PRODUCTS.select do |product_hash|
    product_hash[:name].downcase.include?(query_hash[:q]) &&
    product_hash[:price].between?(query_hash[:price_min], query_hash[:price_max])
  end

  p arr # print the selected product hashes
end

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: "dell"
}

search(query)
search(query2)
