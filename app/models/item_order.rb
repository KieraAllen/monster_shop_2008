class ItemOrder <ApplicationRecord
  validates_presence_of :item_id, :order_id, :price, :quantity

  belongs_to :item
  belongs_to :order

  enum status: %w(pending unfulfilled fulfilled)

  def subtotal
    price * quantity
  end

  def subtract
    item.inventory - quantity
  end
end
