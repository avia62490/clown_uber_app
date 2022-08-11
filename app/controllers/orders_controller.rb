class OrdersController < ApplicationController

  def index
    orders = Order.all
    render json: orders.as_json
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end

  def create
    order = Order.new(
    user_id: params[:user_id],
    clown_id: params[:clown_id],
    date: params[:date],
    time: params[:time],
    event: params[:event]
    )
    order.save
    render json: order.as_json
  end
end
