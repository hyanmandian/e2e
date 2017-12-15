Given /^I access Gaucha$/ do
    visit('https://gauchazh.clicrbs.com.br/')
end

When /^I sigin with a valid user$/ do
    find('.login-button').click()
    find('[name=username]').set('uniritterfapa')
    find('[name=password]').set('1003DC')
    find('.form-login [type=submit]').click()
end

Then /^I should see "(.*?)" in login sidebar$/ do |name|
    expect(find('.box-userinfos-name')).to(have_content(name))
end