require 'rspec'
shared_examples "NIC_BASE" do |envType|
  @env=envType.new
  before :each do |testcase|
    puts "【BEGIN】#{testcase.metadata[:description]}"
  end

  after :each do |testcase|
    puts "【E N D】#{testcase.metadata[:description]}"
  end
  it "TC_#{@env.blade}_#{@env.intf}_001" do |testcase|

  end

  it "TC_#{@env.blade}_#{@env.intf}_002" do |testcase|

  end

end