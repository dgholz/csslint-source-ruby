require 'rspec'
require 'jslint/source'

describe 'JSLint::Source' do
  describe '.path' do
    subject { JSLint::Source.path }
    it 'returns the bundled path' do
      subject.should == File.expand_path('../../vendor/jslint/jslint.js',__FILE__)
    end

    it 'respects the JSLINT_PATH ENV variable' do
      begin
        ENV['JSLINT_PATH'] = 'foobar'
        subject.should == 'foobar'
      ensure
        ENV.delete('JSLINT_PATH')
      end
    end
  end

  describe '.contents' do
    subject { JSLint::Source.contents }
    it 'returns the contents of the jslint source' do
      subject.should == File.read(JSLint::Source.path)
    end
  end

  describe '.version' do
    subject { JSLint::Source.version }
    it 'returns the version of the jslint source' do
      subject.should =~ /201\d-\d{2}-\d{2}/
    end
  end
end
