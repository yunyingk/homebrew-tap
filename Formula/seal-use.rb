class SealUse < Formula
  desc "Seal tenant and Hose approval automation CLI"
  homepage "https://git.ying-qing.cn/gitea/seal-use"
  version "0.10.38"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://git.ying-qing.cn/gitea/seal-use/releases/download/v#{version}/seal-use-darwin-arm64.tar.gz"
  sha256 "1617551c160452da6e69a4478c8adec5ac396e355aeed8eb817bc86eabba5e5a"

  def install
    bin.install "seal-use-darwin-arm64" => "seal-use"
  end

  test do
    system "#{bin}/seal-use", "version"
  end
end
