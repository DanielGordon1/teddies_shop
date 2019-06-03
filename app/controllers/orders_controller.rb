class OrdersController < ApplicationController
  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  def create
    teddy = Teddy.find(params[:teddy_id])
    order  = Order.create!(teddy_sku: teddy.sku, amount: teddy.price, state: 'pending', user: current_user)
    # After creating an order we navigate to the new payments path, displaying some
    # information about the order.
    redirect_to new_order_payment_path(order)
  end
end
