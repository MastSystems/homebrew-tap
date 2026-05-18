class Mast < Formula
  desc "Pin what your code promises to the symbols that prove it"
  homepage "https://github.com/MastSystems/mast-spec"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.11.0/mast-aarch64-apple-darwin.tar.gz"
      sha256 "e70bdcdc2fc91c1ea88dede90226a0cccf5e6141a3077b81e8d6b07cf4c66912"
    end
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.11.0/mast-x86_64-apple-darwin.tar.gz"
      sha256 "3e91648437e765029dc79b593a14f1f64e2323603ceff8bfc08e915d4e714711"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.11.0/mast-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c28ae148b5a9ee8677dc7669269263c2034484a023b0a3b75d4dcc0b1e21d774"
    end
  end

  def install
    bin.install "mast"
  end

  test do
    system "#{bin}/mast", "--version"
  end
end
