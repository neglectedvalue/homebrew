require 'formula'

class HypericSigar <Formula
  url 'http://www.hypertable.org/pub/hyperic-sigar-1.6.3.tar.gz'
  homepage 'http://www.hyperic.com/products/sigar'
  md5 '8a100a491349187710ed98aec0492263'

  def install
    lib.install Dir['sigar-bin/lib/libsigar-universal{,64}-macosx.dylib']
    include.install Dir['sigar-bin/include/*']
  end
end
