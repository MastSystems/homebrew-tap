class Mast < Formula
  desc "Pin what your code promises to the symbols that prove it"
  homepage "https://github.com/MastSystems/mast-spec"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.2/mast-aarch64-apple-darwin.tar.gz"
      sha256 "eede32a8cacc66dca1cda1010f92a78ae8cecb41ac6c0871d9710cdb6417d316"
    end
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.2/mast-x86_64-apple-darwin.tar.gz"
      sha256 "57e876805392648bede6686aa590e82224ca720340b38e69f8a9770ab65fdb26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.2/mast-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03ff9505ebc5236d1d88dd180f637d4c5339350b9c6c096bcf3174bbdb93b86c"
    end
  end

  def install
    bin.install "mast"
  end

  test do
    system "#{bin}/mast", "--version"
  end
end
