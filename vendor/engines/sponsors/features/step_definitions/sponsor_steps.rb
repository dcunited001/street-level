Given /^I have no sponsors$/ do
  Sponsor.delete_all
end

Given /^I (only )?have sponsors titled "?([^\"]*)"?$/ do |only, titles|
  Sponsor.delete_all if only
  titles.split(', ').each do |title|
    Sponsor.create(:name => title)
  end
end

Then /^I should have ([0-9]+) sponsors?$/ do |count|
  Sponsor.count.should == count.to_i
end
