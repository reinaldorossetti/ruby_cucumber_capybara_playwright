require 'rspec'
require 'capybara/cucumber'
require 'json'
require 'allure-cucumber'
require 'capybara-playwright-driver'
require 'rspec/retry'


puts(ENV['BROWSER'])

# setup
Capybara.register_driver(:playwright) do |app|
  $page = Capybara::Playwright::Driver.new(app, playwright_cli_executable_path: './node_modules/.bin/playwright', 
                                           browser_type: (ENV['BROWSER'] || 'chromium').to_sym, headless: true, slowMo: 400, args: ['--window-size=1280,1024',
                                           '--no-sandbox'])
end

Capybara.default_max_wait_time = 15
Capybara.default_driver = :playwright #:selenium
Capybara.save_path = 'tmp/capybara'
Capybara.javascript_driver = :playwright #:selenium
Capybara.app_host = 'https://www.vr.com.br/'



