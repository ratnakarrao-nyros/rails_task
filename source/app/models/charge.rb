class Charge < ActiveRecord::Base
	
  belongs_to :customer , :dependent => :destroy
  monetize :amount

end
