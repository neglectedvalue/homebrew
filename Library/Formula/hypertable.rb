require 'formula'

class Hypertable <Formula
  url 'http://hypertable.org/download.php?v=0.9.4.3-alpha'
  version '0.9.4.3-alpha'
  homepage 'http://hypertable.org/'
  md5 '8fcae7ccf4261c4fa9bb5afb1646fe8a'
  head 'git://scm.hypertable.org/pub/repos/hypertable.git'

  depends_on 'cmake' => :build
  depends_on 'berkeley-db'
  depends_on 'libart'
  depends_on 'rrdtool'
  depends_on 'log4cpp'
  depends_on 'hyperic-sigar'
  depends_on 're2'
  # ! depends_on 'thrift'
  # doxygen
  # google-perftools
  # ? Hoard
  # ? ceph
  # hadoop

  def install
    system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
