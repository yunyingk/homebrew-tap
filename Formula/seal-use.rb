class SealUse < Formula
  desc "Seal tenant and Hose approval automation CLI"
  homepage "https://git.ying-qing.cn/gitea/seal-use"
  version "0.10.30"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://git.ying-qing.cn/gitea/seal-use/releases/download/v#{version}/seal-use-darwin-arm64.tar.gz"
  sha256 "671b62a99445fedb2fe4503cbca5c71b635c91fcf31215167f8e77a2faea812f"

  def install
    bin.install "seal-use-darwin-arm64" => "seal-use"
  end

  test do
    system "#{bin}/seal-use", "version"
  end
end
