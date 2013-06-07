class QuickGosController < ApplicationController
	def create
    if params[:serial_number]
      s = SerialProduct.find_by_serial_number(params[:serial_number])
      if s
        redirect_to s
        return
      end
    end
    render :text => 'create'
	end
end

