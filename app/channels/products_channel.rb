class ProductsChannel < ActionCable::Channel::Base
  # create prodcut channel to broadcast prices to update prices in carts.

  def subscribed
    stream_from "products"
  end
end
