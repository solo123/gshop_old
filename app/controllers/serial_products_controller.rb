class SerialProductsController < ApplicationController
  # GET /serial_products
  # GET /serial_products.json

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
  def index
    @collection = SerialProduct.page(params[:page]).per_page(20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @serial_products }
    end
  end

  # GET /serial_products/1
  # GET /serial_products/1.json
  def show
    @serial_product = SerialProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serial_product }
    end
  end

  # GET /serial_products/new
  # GET /serial_products/new.json
  def new
    @serial_product = SerialProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serial_product }
    end
  end

  # GET /serial_products/1/edit
  def edit
    @serial_product = SerialProduct.find(params[:id])
  end

  # POST /serial_products
  # POST /serial_products.json
  def create
    @serial_product = SerialProduct.new(params[:serial_product])

    respond_to do |format|
      if @serial_product.save
        format.html { redirect_to @serial_product, notice: 'Serial product was successfully created.' }
        format.json { render json: @serial_product, status: :created, location: @serial_product }
      else
        format.html { render action: "new" }
        format.json { render json: @serial_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /serial_products/1
  # PUT /serial_products/1.json
  def update
    @serial_product = SerialProduct.find(params[:id])

    respond_to do |format|
      if @serial_product.update_attributes(params[:serial_product])
        format.html { redirect_to @serial_product, notice: 'Serial product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serial_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serial_products/1
  # DELETE /serial_products/1.json
  def destroy
    @serial_product = SerialProduct.find(params[:id])
    @serial_product.destroy

    respond_to do |format|
      format.html { redirect_to serial_products_url }
      format.json { head :no_content }
    end
  end
end
