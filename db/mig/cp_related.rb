SalesSheetItem.all.each do |s|
  s.product = s.product_data.product if s.product_data
  s.save
end

SerialProduct.all.each do |s|
  s.product = s.product_data.product if s.product_data
  s.save
end

StockTakingItem.all.each do |s|
  s.product = s.product_data.product if s.product_data
  s.save
end

Stock.all.each do |s|
  s.product = s.product_data.product if s.product_data
  s.save
end

StockJournal.all.each do |s|
  s.product = s.stock.product_data.product if s.stock.product_data
  s.save
end
