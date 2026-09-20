class SealUse < Formula
  desc "Seal tenant and Hose approval automation CLI"
  homepage "https://git.ying-qing.cn/gitea/seal-use"
  version "0.10.31"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://git.ying-qing.cn/gitea/seal-use/releases/download/v#{version}/seal-use-darwin-arm64.tar.gz"
  sha256 "936f7e7febd54d4a7d5f1954508aa4cbfc291bfbbb1b29a10047be2ea45af950"

  def install
    bin.install "seal-use-darwin-arm64" => "seal-use"
  end

  test do
    system "#{bin}/seal-use", "version"
  end
end
