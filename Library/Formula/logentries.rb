require 'formula'

class Logentries < Formula
  homepage 'https://logentries.com/doc/agent/'
  url 'https://github.com/logentries/le/tarball/v0.8.26'
  sha1 '561ef87fcaf33699d5a5f74b2dcf935fe0093abf'
  depends_on 'Python'

  def install
    bin.install 'le'
  end

  def test
	banner = `le 2>&1`	
	banner =~ /.*Logentries/
  end
end
