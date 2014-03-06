class ItemsController < ApplicationController
  
  def index
    @items = Item.where(completed: false) # This only displays the incomplete items
    @new_item = Item.new
    render 'index'
  end

  def complete
    unless params[:item_checkbox]
      flash[:notice] = "Nice try. You didn't check anything off your list."
    else 
      params[:item_checkbox].each do |check|
        item_id = check
        i = Item.find_by_id(item_id)
        i.completed =  true
        i.save
      end
    end
    redirect_to :action => 'index'
  end

  def create
    @new_item = Item.new(item_params)

    # Provide feedback to the user if it's an invalid Items
    unless @new_item.save
      flash[:notice] = "Rut-ro Shaggy. Can't add a blank To-do item." 
    end

    redirect_to action: 'index'
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_url
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:description, :completed, :priority)
    end
end
