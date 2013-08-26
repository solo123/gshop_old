class WarehousesController < ResourcesController
	private
		def warehouse_params
			params.require(:warehouse).permit(:name, :pre_code, :status)
    end
end
