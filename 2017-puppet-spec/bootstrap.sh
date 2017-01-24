#!/bin/sh

cd /puppet/$1
mkdir -p spec/classes spec/defines spec/fixtures/manifests
touch spec/fixtures/manifests/init.pp
mkdir -p spec/fixtures/modules/$1
cd spec/fixtures/modules/$1
for i in files lib manifests templates; do test -c $i && ln -s ../../../../$i $i; done
cd /puppet/$1
cat > Rakefile <<EOF
require 'rake'

require 'rspec/core/rake_task'
require 'puppet-lint/tasks/puppet-lint'

RSpec::Core::RakeTask.new(:spec) do |t|
   t.pattern = 'spec/*/*_spec.rb'
end
EOF

cat > spec/spec_helper.rb <<EOF
require 'rspec-puppet'

fixture_path = File.expand_path(File.join(__FILE__, '..', '..', 'fixtures'))

RSpec.configure do |c|
	c.module_path = File.join(fixture_path, 'modules')
	c.manifest_dir = File.join(fixture_path, 'manifests')
end
EOF

if [ ! -z "$2" ]; then
	cd /puppet/$1
	rake $2
fi
