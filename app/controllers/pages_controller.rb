class PagesController < ApplicationController
  before_filter :differentindex, only: [:index]

  def index
    @products=Product.all.paginate(page: params[:page], per_page: 8)
    @images=Image.all.paginate(page: params[:page], per_page: 8)
    @product = Product.new
    @order_items = current_order.order_items
    @num_of_items=current_order.order_items.size
    # @order_item = current_order.order_items.new
    @brands=Brand.all
    @sizes=Size.all
    @styles=Style.all
    @colors=Color.all
    @categories=Category.all
@differentindex=true

  end

  def home
  end

  def category_page
    @products=Product.all
    @images=Image.all
    @product = Product.new
    @order_items = current_order.order_items
    @num_of_items=current_order.order_items.size
    @order_item = current_order.order_items.new
    @brands=Brand.all
    @sizes=Size.all
    @styles=Style.all
    @colors=Color.all
    @categories=Category.all

  #  @order_item_uid=OrderItem.where(:user_id => current_user.id)
    # @order_items = current_order.order_items
    # @num_of_items=current_order.order_items.size
  end

  def show
    @products = Product.where(:category_id => params[:category_id])
    @product= Product.find(params[:id])
    @order_items = current_order.order_items
    @num_of_items=current_order.order_items.size
    @brands=Brand.all
    @sizes=Size.all
    @styles=Style.all
    @colors=Color.all
    @categories=Category.all


  end

  def product_details
    @products=Product.all
    @images=Image.all
    @product = Product.new
    @order_items = current_order.order_items
    @num_of_items=current_order.order_items.size

  end

  def user_profile
  end

  def admin_dashboard
  end
  def incart
  end


end
