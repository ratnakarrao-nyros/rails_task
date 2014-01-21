module ChargesHelper

def successful_charges
	@charges.all(:conditions => ['paid =? And refunded = ?', true ,false ] )
end

def failed_charges
	@charges.all(:conditions => ['paid =? And refunded = ?', false ,false ] )
end

def dispute_charges
	@charges.all(:conditions => ['paid = ? AND refunded = ?', false ,true])
end

end
