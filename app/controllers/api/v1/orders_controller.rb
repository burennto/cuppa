class Api::V1::OrdersController < Api::V1::ApiController

  before_filter :find_order, :only => [ :update, :destroy ]

  def index
    @orders = Order.all

    respond_with @orders
  end

  def create
    @order = Order.new(params[:order])
    @order.save

    respond_with @order, :location => nil
  end

  def update
    @order.update_attributes(params[:order])

    respond_with @order
  end

  def destroy
    @order.destroy

    respond_with @order
  end

  protected

    def find_order
      begin
        @order = Order.find_by_id!(params[:id])
      rescue ActiveRecord::RecordNotFound
        error_msg = { :errors => { :base => [ 'Order does not exist' ] } }
        respond_with error_msg do |format|
          format.json { render :json => error_msg, :status => :not_found, :location => nil }
        end
      end
    end

end
