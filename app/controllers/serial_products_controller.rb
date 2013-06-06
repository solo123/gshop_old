class SerialProductsController < ResourcesController
  def batch_add
    from_serial = params[:from_serial].to_i
    to_serial = params[:to_serial].to_i
    serial_len = params[:from_serial].strip.length
    if (to_serial > from_serial) && (from_serial > 0)
      (from_serial..to_serial).each do |serial|
        s = SerialProduct.new
        s.serial_number = "%0#{serial_len}d" % serial
        s.save
      end
    end
    redirect_to :action => :index
  end
end
