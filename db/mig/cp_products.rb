Guitar.all.each do |g|
  p = g.build_product
  p.brand = g.brand
  p.model = g.model
  p.full_name = g.full_name
  p.catalog = 'guitar/' + g.guitar_type
  p.title_photo_id = g.title_photo_id
  pr = p.build_product_price
  pr.price = g.price
  p.save
  g.save
end

Accessory.all.each do |ac|
  p = ac.build_product
  p.brand = ac.brand
  p.full_name = ac.full_name
  p.catalog = 'accessory/' + ac.catalog
  p.title_photo_id = ac.title_photo_id
  pr = p.build_product_price
  pr.price = ac.price
  p.save
  ac.save
end


