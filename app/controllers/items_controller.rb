class ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = Item.where(menus_id: params[:menu_id])
    @thing = Menu.find(params[:menu_id])
    p params
    p "------------------------------"
    p @items
    p @thing

    render :json => { :item_form => render_to_string( :partial => "item", locals: {:item => @item, :items => @items, :thing => @thing} ) }
  end

  def create
    p params
    @item = Item.new(params[:item])
    @item.menus_id = params[:menu_id]
    if @item.save
      render :json => { :item_list => render_to_string( :partial => "item", locals: {:item => @item}) }
    else
      render :json => { :error => @item.errors.full_messages.join(", ")}, :status => :unprocessable_entity
    end
  end
end
