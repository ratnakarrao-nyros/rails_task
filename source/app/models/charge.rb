class Charge < ActiveRecord::Base

  belongs_to :customer , :dependent => :destroy
  monetize :amount



  def self.successful_charges
  	all(:conditions => ['paid =? And refunded = ?', true ,false ] )
  end


  def self.failed_charges
  	all(:conditions => ['paid =? And refunded = ?', false ,false ] )
  end

  def self.dispute_charges
  	all(:conditions => ['paid = ? AND refunded = ?', false ,true])
  end


end


