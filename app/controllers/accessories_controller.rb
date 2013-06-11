class AccessoriesController < ResourcesController
  def select
    load_collection
  end
  def search
    render 'search', :layout => nil
  end
end
