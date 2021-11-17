module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))
    when /^the products page for "(.*)"$/i then '/products'
    when /^the edit page for "(.*)"$/i
      edit_product_path(Product.find_by_name($1))
    when /^the details page for "(.*)"$/i
      product_path(Product.find_by_name($1))
    when /^the buy page for "(.*)"$/i
      store_path(Product.find_by_name($1))
    when /^the cart page$/
      carts_path
    when /^the checkout page$/
      buy_path
    when /^the signup page$/
      sign_up_path()
    when /^the signin page$/
      sign_in_path()
    when /^the profile page for "(.*)"$/
      profile_path(1)
    when /^the new password page$/
      new_password_path()
    when /^the password_edit page for "(.*)"$/i
      edit_user_password_path(1)
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      end
    end
  end
end

World(NavigationHelpers)
