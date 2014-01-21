class MonetizeCharge < ActiveRecord::Migration
  def change
    add_money :charges, :amount, currency: { present: true }
  end
end


