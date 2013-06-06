class PhotosController < ResourcesController
    def new
      load_parent
      @object = Photo.new
    end
    def create
      load_parent
      @object = Photo.new(params[:photo])
      if @object.save
        if @parent
          @parent.photos << @object
          @parent.save
          redirect_to @parent
          return
        end
      else
        flash[:error] = @object.errors.full_messages.to_sentence
        @no_log = 1
      end
    end

      def load_collection
        load_parent
        @collection = @parent.photos
      end 
      def load_object
        load_parent
        @object = Photo.find_by_id(params[:id])
      end
      def load_parent
        @parent = SerialProduct.find(params[:serial_product_id]) if params[:serial_product_id]
      end
end
