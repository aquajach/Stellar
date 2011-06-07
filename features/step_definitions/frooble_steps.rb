Given /^the following froobles:$/ do |froobles|
  Frooble.create!(froobles.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) frooble$/ do |pos|
  visit froobles_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following froobles:$/ do |expected_froobles_table|
  expected_froobles_table.diff!(tableish('table tr', 'td,th'))
end
