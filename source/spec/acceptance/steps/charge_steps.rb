### UTILITY METHODS ###

def get_all_charges
  @charges = Charge.all.to_a
end


### GIVEN ###


step "I have list of charges" do 
  #get_all_charges
end 


### WHEN ###


step "I am at charges page" do
  visit charges_path
end


### THEN ###


step "I should see list of :count successful charges" do |count|
  @successful_charges.count.should == count.to_i
end

step "I should see list of :count failed charges" do |count|
  @failed_charges.count.should == count.to_i
end

step "I should see list of :count dispute charges" do |count|
  @dispute_charges.count.should == count.to_i
end





