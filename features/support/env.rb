require 'rspec'
require 'capybara/cucumber'
require 'json'
require 'allure-cucumber'
require 'capybara-playwright-driver'

# tratando as variaveis de ambiente e definindo valores padroes.
if ENV['HEADLESS'].nil? or ENV['HEADLESS'].downcase=='false'
  headless_browser = false
else 
  headless_browser = true
end

if ENV['BROWSER'].nil?
  (browser_name = "chromium")
else
  browser_name = ENV['BROWSER'].downcase
end

# setup
Capybara.register_driver(:playwright) do |app|
  Capybara::Playwright::Driver.new(app, playwright_cli_executable_path: './node_modules/.bin/playwright',
                                                browser_type: browser_name.to_sym, headless: headless_browser,
                                                slowMo: 500, args: %w[--window-size=1280,1024 --no-sandbox])
end

Capybara.default_max_wait_time = 20
Capybara.default_driver = :playwright #:selenium
Capybara.save_path = 'tmp/capybara'
Capybara.javascript_driver = :playwright #:selenium
Capybara.app_host = 'https://www.vr.com.br/'

puts "Browser=#{browser_name}"
puts "Headless=#{headless_browser}"
