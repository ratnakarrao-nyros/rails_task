class Charge < ActiveRecord::Base

  belongs_to :customer , :dependent => :destroy
  monetize :amount



  def self.successful_charges
    where('paid =? And refunded = ?', true ,false).to_a
  end


  def self.failed_charges
    where('paid =? And refunded = ?', false ,false).to_a
  end

  def self.dispute_charges
    where('paid =? And refunded = ?', false ,true).to_a
  end


end


