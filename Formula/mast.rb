class Mast < Formula
  desc "Pin what your code promises to the symbols that prove it"
  homepage "https://github.com/MastSystems/mast-spec"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.4/mast-aarch64-apple-darwin.tar.gz"
      sha256 "43fc8751e13ef40b2bbade8d05aa3b58c5dbb5fba0dd17731f5c34e8d4670c15"
    end
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.4/mast-x86_64-apple-darwin.tar.gz"
      sha256 "ef176464853b8e9c1d6c72e9a5cdd4d32efc6f30b7273803739513b1b469338a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MastSystems/mast-spec/releases/download/v0.10.4/mast-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "923572e11e2bdb1adb3284c3bc5391041ff0d07c64ff3a770642c1edd076950d"
    end
  end

  def install
    bin.install "mast"
  end

  test do
    system "#{bin}/mast", "--version"
  end
end
