Guitar.all.each do |g|
  p = Product.new
  p.brand = g.brand
  p.model = g.model
  p.full_name = g.full_name
  if g.product_data_type == 'Guitar'
    p.catalog = g.product_data_type + '/' + g.guitar_type
  end
end
