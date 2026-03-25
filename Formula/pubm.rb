class Pubm < Formula
  desc "Publish manager for multiple registries"
  homepage "https://github.com/syi0808/pubm"
  version "0.4.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.4.8/pubm-darwin-arm64.tar.gz"
      sha256 "2d1a1d3fa9d4265451da3dd1a20c6d8f842e91e354e96b6656965b56d6b4cbe4"
    elsif Hardware::CPU.intel?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.4.8/pubm-darwin-x64.tar.gz"
      sha256 "60db48be3c4fb399f8d3e0134061a059622910936357bc9b9859c9353b7415d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.4.8/pubm-linux-arm64.tar.gz"
      sha256 "6863ff1de27cb9a2f00e099f50ec78709b49415fd14bd49922b9a513ab293613"
    elsif Hardware::CPU.intel?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.4.8/pubm-linux-x64.tar.gz"
      sha256 "dc839a14415390ebe66ab3636730cf4de2e87ecb8060f9c1cd132aa02de05d32"
    end
  end

  def install
    bin.install "pubm"
  end

  test do
    system "#{bin}/pubm", "--version"
  end
end
