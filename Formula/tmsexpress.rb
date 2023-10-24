class Tmsexpress < Formula
  desc "LPC speech encoder for the TMS5220"
  homepage "https://github.com/tornupnegatives/TMS-Express"
  url "https://github.com/tornupnegatives/TMS-Express/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "e494bfdc1d23d904e43a98c114c6589981af24f2d76c1ed966741fe42daf8d41"
  license "GPL-3.0-or-later"

  bottle do
    root_url "https://github.com/tornupnegatives/homebrew-tap/releases/download/tmsexpress-2.0.2"
    sha256 cellar: :any_skip_relocation, ventura:      "7e9d20d8510ce29e4369f4afe9a2b625fed42de792701dbc70b23b28add3715b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "131513bb95a677fd55a90b2a8437dae980561fb1440bfb856a21ce3657d61c1c"
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
