require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook

class Mausezahn < Formula
  homepage 'http://www.perihel.at/sec/mz/index.html'
  url 'http://www.perihel.at/sec/mz/mz-0.40.tar.gz'
  sha1 'c1c73e93862dc96859159c7fc9daf61f64650c0b'

  depends_on 'libnet'
  depends_on 'cmake' => :build

  def install
    # ENV.j1  # if your formula's build system can't parallelize
    ENV["CMAKE_C_FLAGS"] = "-D_POSIX_C_SOURCE 199309L -I/usr/local/include/libnet -L/usr/local/lib/libnet"
    system "cmake", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test mz`.
    system "false"
  end
end
