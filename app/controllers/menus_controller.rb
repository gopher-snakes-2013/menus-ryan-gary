class MenusController < ApplicationController
  def index
    @menu = Menu.new
    @menus = Menu.all
    
  end

  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      render :json => { :menu_item => render_to_string( :partial => "menu", locals: {:m => @menu}) }
    else
      render :json => { :error => @menu.errors.full_messages.join(", ")}, :status => :unprocessable_entity
    end
  end

end
