class SalesSheetItemsController < NestedResourcesController
    def destroy
      load_object
      @object.destroy
      redirect_to @parent
    end
end
