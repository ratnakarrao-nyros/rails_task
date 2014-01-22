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

step "I am at charge creation page" do 
  visit new_charge_path
end

step "fill all the required data and submit page" do 
  select('Dean', :from => 'Customer') 
  fill_in "Amount", :with => '1000'
  select('USD', :from => 'Amount currency') 
  click_button "Create Charge"
end


### THEN ###


step "I should see list of :count successful charges" do |count|
  Charge.successful_charges.count.should == count.to_i
  page.should have_content "Successful Charges"
  page.all(:css, '.success').size.should ==  10
end

step "I should see list of :count failed charges" do |count|
  Charge.failed_charges.count.should == count.to_i
  page.should have_content "Failed Charges"
  page.all(:css, '.failed').size.should ==  5
end 

step "I should see list of :count dispute charges" do |count|
  Charge.dispute_charges.count.should == count.to_i
  page.should have_content "Dispute Charges"
  page.all(:css, '.dispute').size.should ==  5
end

step "I should see success message on screen" do 
  page.should have_content "Charge was successfully created"
end



