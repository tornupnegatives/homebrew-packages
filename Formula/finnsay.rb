class Finnsay < Formula
  desc "Cowsay clone featuring Finn the Human"
  homepage "https://github.com/tornupnegatives/finnsay"
  url "https://github.com/tornupnegatives/finnsay/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "398116fea0e7655baa66f20032e9a3fe050a9b198746566cc3951f75be348a03"
  license "Unlicense"

  bottle do
    root_url "https://github.com/tornupnegatives/homebrew-tap/releases/download/finnsay-1.0.0"
    sha256 cellar: :any_skip_relocation, ventura:      "72bec1b72f0d21bc74cbc90ed297ba23e53943df40190f1349665c54720b33bd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8dee82c9fa34fc7a16910d6fd4fdcf3a6515e331b77c6e011c2af0b4634d1fd5"
  end

  depends_on "python"

  def install
    bin.install "./finnsay.py" => "finnsay"
  end

  test do
    system "true"
  end
end
