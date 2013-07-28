GodownItem.all.each do |s|
  s.product = s.product_data.product if s.product_data
  s.save
end

