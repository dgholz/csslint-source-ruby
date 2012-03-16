module CSSLint
  class Source
    def self.path
      ENV['CSSLINT_PATH'] ||
        File.expand_path("../../../vendor/csslint/release/csslint.js", __FILE__)
    end

    def self.contents
      @contents ||= File.read(path)
    end

    def self.version
      @version ||= contents.match( / api[.]version [ \t]* = [ \t]* " (\d+ [.] \d+ [.] \d+) "; /x )[0] || 'unknown';
    end
  end
end
