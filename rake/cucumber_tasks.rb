begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:cucumber)
  Cucumber::Rake::Task.new(:wip) do |wip|
      wip.cucumber_opts = "-p wip"
  end
rescue LoadError => e
  #do_nothing - bundler will sort this out
end

