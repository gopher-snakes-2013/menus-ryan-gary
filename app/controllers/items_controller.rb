class ItemsController < ApplicationController
  def index
    p params
    p "------------------------------"
    @item = Item.new
    @items = Item.where menus_id: params[:menu_id]
  end

  def create
    p params
    p params[:menu_id]
    @item = Item.new(params[:item])
    @item.menus_id = params[:menu_id]
    if @item.save
      redirect_to menu_items_path
    end
  end

  def new

  end

end