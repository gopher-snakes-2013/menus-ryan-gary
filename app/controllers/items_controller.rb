class ItemsController < ApplicationController
  def index
    p params
    p "------------------------------"
    @item = Item.new
    @items = Item.where(menus_id: params[:menu_id])
  end

  def create
    # p params
    # p params[:menu_id]
    @item = Item.new(params[:item])
    # @item.menus_id = params[:menu_id]
    if @item.save
      render :json => { :item_list => render_to_string( :partial => "item", locals: {:item => @item}) }
    else
      render :json => { :error => @item.errors.full_messages.join(", ")}, :status => :unprocessable_entity
    end
  end
end