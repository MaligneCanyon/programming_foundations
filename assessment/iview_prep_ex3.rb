# inputs:
# - Hash (query containing price_min, price_max, and brand specifications)
# outputs:
# - Array containing selection of Hashes from PRODUCTS array
# reqs:
# - write a method 'search' that accepts a query hash and returns an array
#   containing a subset of the PRODUCTS array
# - the returned array should only contain product hashes that meet the
#   price_min, price_max and brand criteria specified in the query hash
# rules:
# - select product hashes where price between price_min and price_max inclusive
# datastruct:
# - arr
# algo:
# - select from the PRODUCTS arr where
#   - the product[:name] contains the query[:q] and
#   - the product[:price] is btwn the query[:price_min] and query[:price_max]
# - print the selection

PRODUCTS = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
  { name: "Thinkpad x250", price: 979 },
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
  { name: "Dell Inspiron", price: 450 }
].freeze

def search(query)
  p PRODUCTS.select { |product| product[:name].downcase.include?(query[:q]) &&
    product[:price].between?(query[:price_min], query[:price_max]) }
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
