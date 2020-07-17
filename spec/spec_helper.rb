require 'simplecov'
SimpleCov.start

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.color_mode = :on

  #prevent STDOUT,STDERR show in RSpec output. REF https://stackoverflow.com/a/15432948/13887067
  original_stderr = $stderr
  original_stdout = $stdout
  config.before(:all) do
    # Redirect stderr and stdout
    $stderr = File.open(File::NULL, "w")
    $stdout = File.open(File::NULL, "w")
  end
  config.after(:all) do
    $stderr = original_stderr
    $stdout = original_stdout
  end
end


def relative_file(filepath)
  File.join(File.dirname(__FILE__), filepath)
end
