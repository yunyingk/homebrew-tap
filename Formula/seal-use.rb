class SealUse < Formula
  desc "Seal tenant and Hose approval automation CLI"
  homepage "https://git.ying-qing.cn/gitea/seal-use"
  version "0.11.5"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://git.ying-qing.cn/gitea/seal-use/releases/download/v#{version}/seal-use-darwin-arm64.tar.gz"
  sha256 "c312001e1d96013f4104370f6fc6c92e1055a9d53ff26c11c1a0e33095896c82"

  def install
    bin.install "seal-use-darwin-arm64" => "seal-use"
  end

  test do
    system "#{bin}/seal-use", "version"
  end
end
