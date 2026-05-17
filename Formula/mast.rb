class Mast < Formula
  desc "Pin what your code promises to the symbols that prove it"
  homepage "https://github.com/MastSystems/mast-spec"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.3/mast-aarch64-apple-darwin.tar.gz"
      sha256 "450c2d5d7624378465737c81f01110f194e1ebb41c09981b768888cd6a17a5a5"
    end
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.3/mast-x86_64-apple-darwin.tar.gz"
      sha256 "744e767936dfc9dcb0f5fc1bee30b9f1365f37599269ee3f79f2d85d71c051ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.3/mast-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7f23b9f51a7781d6ecfa0c53eb6dd5cfc380ebba1915b72e5f5e579e1b5dcef"
    end
  end

  def install
    bin.install "mast"
  end

  test do
    system "#{bin}/mast", "--version"
  end
end
