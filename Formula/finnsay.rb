class Finnsay < Formula
  desc "Cowsay clone featuring Finn the Human"
  homepage "https://github.com/tornupnegatives/finnsay"
  url "https://github.com/tornupnegatives/finnsay/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "398116fea0e7655baa66f20032e9a3fe050a9b198746566cc3951f75be348a03"
  license "Unlicense"

  depends_on "python"

  def install
    bin.install "./finnsay.py" => "finnsay"
  end

  test do
    system "true"
  end
end
