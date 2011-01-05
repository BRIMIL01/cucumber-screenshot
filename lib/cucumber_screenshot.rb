require 'cucumber'
require 'cucumber/formatter/html'
require 'yaml'
require 'nokogiri'

require 'cucumber_screenshot/world'

module CucumberScreenshot
  VERSION = '0.3.4'

  begin
    require 'snapurl'
    SNAPURL_PRESENT = true
  rescue LoadError
    SNAPURL_PRESENT = false
  end

  def self.snap_url_present?
    SNAPURL_PRESENT
  end
end