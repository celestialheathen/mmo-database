class ItemsController < ApplicationController
    def index 
        @items = Item.all 
        render json: @items
    end 

    def create
        @item = Item.create(item_params)
        render json: @item
    end 

    def destroy
        @item = Item.first
        @item.destroy
    end

    private
    
    def item_params 
        params.require(:item).permit(:name, :pid)
    end 
end
