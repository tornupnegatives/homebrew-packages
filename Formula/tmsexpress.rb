class Tmsexpress < Formula
  desc "LPC speech encoder for the TMS5220"
  homepage "https://github.com/tornupnegatives/TMS-Express"
  url "https://github.com/tornupnegatives/TMS-Express/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "e494bfdc1d23d904e43a98c114c6589981af24f2d76c1ed966741fe42daf8d41"
  license "GPL-3.0-or-later"

  bottle do
    root_url "https://github.com/tornupnegatives/homebrew-tap/releases/download/tmsexpress-2.0.2"
    rebuild 1
    sha256 cellar: :any,                 ventura:      "febd15f592e4190ad96b68089b0931982f310942c7dabb100089b8040d779b95"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0f278cd1fe1a431c39c8628bd6f2ce9b68abdfa82de6ab82f91dedffe1bad5e7"
  end

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  depends_on "libsamplerate"
  depends_on "libsndfile"
  depends_on "qt"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"

    bin.install "build/tmsexpress" => "tmsexpress"
  end

  test do
    system "true"
  end
end
