Before do
  page.current_window.resize_to(1920, 1080)
  visit "/"
end

After do |scenario|
  page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
  # embed(screenshot, "image/png", "Screenshot")
end