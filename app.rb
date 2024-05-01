require 'playwright'

out_dir = ENV['OUT_DIR'] || File.join(__dir__, 'output')

Playwright.create(playwright_cli_executable_path: './node_modules/.bin/playwright') do |playwright|
  playwright.chromium.launch do |browser|
    tab = browser.new_page
    tab.goto('https://aligach.net/diary/')
    tab.screenshot(path: File.join(out_dir, 'aligach.png'))
  end
end
