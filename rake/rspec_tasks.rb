begin
  require 'rspec/core'
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = FileList['spec/**/*_spec.rb']
    spec.rspec_opts = "-cfd --tag ~wip --tag ~todo"
  end
rescue LoadError => e
  #do_nothing - bundler will sort this out
end
