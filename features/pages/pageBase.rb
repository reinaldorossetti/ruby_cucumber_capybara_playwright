module PageBase

  include Capybara::DSL

  # jquery clique usado somente quando o elemento espera um trigger click.
  def click_fast(elem)
    find(elem).hover
    execute_script("$('#{elem}').click()")
  end

end