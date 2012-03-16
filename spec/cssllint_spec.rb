require 'rspec'
require 'csslint/source'

describe 'CSSLint::Source' do
  describe '.path' do
    subject { CSSLint::Source.path }
    it 'returns the bundled path' do
      subject.should == File.expand_path('../../vendor/csslint/release/csslint.js',__FILE__)
    end

    it 'respects the CSSLINT_PATH ENV variable' do
      begin
        ENV['CSSLINT_PATH'] = 'foobar'
        subject.should == 'foobar'
      ensure
        ENV.delete('CSSLINT_PATH')
      end
    end
  end

  describe '.contents' do
    subject { CSSLint::Source.contents }
    it 'returns the contents of the csslint source' do
      subject.should == File.read(CSSLint::Source.path)
    end
  end

  describe '.version' do
    subject { CSSLint::Source.version }
    it 'returns the version of the csslint source' do
      subject.should =~ / \d+ [.] \d+ [.] \d+ /x
    end
  end
end
