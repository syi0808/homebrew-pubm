class Pubm < Formula
  desc "Publish manager for multiple registries"
  homepage "https://github.com/syi0808/pubm"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.5.3/pubm-darwin-arm64.tar.gz"
      sha256 "70f3d2984892c38bc52a57790463da9a1ec45abbc5623d2405f2128a2341eb23"
    elsif Hardware::CPU.intel?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.5.3/pubm-darwin-x64.tar.gz"
      sha256 "912d60c2d3f9bf9099ed0cf6ad48ffdfe252dd371f545baf9decd36eded1e41d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.5.3/pubm-linux-arm64.tar.gz"
      sha256 "9dfd2ce784429ec8921e6ff574a4c33e3ab43845cc1f7e30b2eedbbd338211df"
    elsif Hardware::CPU.intel?
      url "https://github.com/syi0808/pubm/releases/download/pubm%400.5.3/pubm-linux-x64.tar.gz"
      sha256 "05a2a9998f94bd2252219ecba72a30a336a688a0010b5009325284cebf3215ac"
    end
  end

  def install
    bin.install "pubm"
  end

  test do
    system "#{bin}/pubm", "--version"
  end
end
