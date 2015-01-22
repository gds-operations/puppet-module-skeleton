require 'spec_helper_acceptance'

describe 'basic tests' do
  it 'class should work without errors and be idempotent' do
    pp = <<-EOS
      class { '<%= metadata.name %>': }
    EOS

    apply_manifest(pp, :catch_failures => true)
    apply_manifest(pp, :catch_failures => true)
  end
end
