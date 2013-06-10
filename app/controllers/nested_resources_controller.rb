  class NestedResourcesController < ResourcesController
    def new
      load_parent
      @object = object_name.classify.constantize.new
    end
    def create
      load_parent
      @object = @parent.send(object_name.pluralize).build
      @object.update_attributes(params[object_name])
      if @object.save
        redirect_to @parent
        return
      else
        flash[:error] = @object.errors.full_messages.to_sentence
        @no_log = 1
      end
      redirect_to :action => :new
    end

      def load_collection
        load_parent
        @collection = @parent.send(object_name.pluralize)
      end 
      def load_object
        load_parent
        @object = object_name.classify.constantize.find_by_id(params[:id])
      end
      def load_parent
        parent_id = params.detect {|p| p[0] =~ /^\w+_id$/}
        if parent_id
          @parent_object_name = parent_id[0][0..-4]
          @parent = @parent_object_name.classify.constantize.find(parent_id[1])
        end
      end
  end

