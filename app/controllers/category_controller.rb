class CategoryController < ApplicationController
  def index
  end
  def show
  #  if params[:category_name]
       @products = Product.all.paginate(page: params[:page], per_page: 8)
    #  else
    #    @products = Product.all
    #  end
    #@p = Product.where("category_id = ?", params[:category])

      @images=Image.all.paginate(page: params[:page], per_page: 8)
      @order_items = current_order.order_items
      @num_of_items=current_order.order_items.size
      @order_item = current_order.order_items.new
      @brands=Brand.all
      @sizes=Size.all
      @styles=Style.all
      @colors=Color.all
      @categories=Category.all

  end




end