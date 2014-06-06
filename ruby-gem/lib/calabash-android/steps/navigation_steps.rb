Then /^I go back$/ do
  perform_action('go_back')
end

Then /^I press the menu key$/ do
  perform_action('press_menu')
end

Then /^I press the enter button$/ do
  perform_action('send_key_enter')
end


Then /^I swipe left$/ do
  perform_action('swipe', 'left')
end

Then /^I swipe right$/ do
  perform_action('swipe', 'right')
end

Then /^I select "([^\"]*)" from the menu$/ do |item|
  perform_action("press_menu")
  touch("DropDownListView descendant * {text CONTAINS '#{item}'}")
end

Then /^I select tab number (\d+)$/ do | tab |
  perform_action('select_tab', tab)
end

# @param - the "tag" associated with the tab, or the text within the tab label
Then /^I select the "([^\"]*)" tab$/ do | tab |
  perform_action('select_tab', tab)
end

Then /^I scroll down$/ do
  perform_action('scroll_down')
end

Then /^I scroll up$/ do
  perform_action('scroll_up')
end

Then /^I drag from (\d+):(\d+) to (\d+):(\d+) moving with (\d+) steps$/ do |fromX, fromY, toX, toY, steps|
  perform_action('drag',fromX,toX,fromY,toY,steps)
end
   
