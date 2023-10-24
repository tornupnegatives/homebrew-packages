class Tmsexpress < Formula
  desc "LPC speech encoder for the TMS5220"
  homepage "https://github.com/tornupnegatives/TMS-Express"
  url "https://github.com/tornupnegatives/TMS-Express/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "e494bfdc1d23d904e43a98c114c6589981af24f2d76c1ed966741fe42daf8d41"
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  depends_on "libsamplerate"
  depends_on "libsndfile"
  depends_on "qt"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "true"
  end
end
