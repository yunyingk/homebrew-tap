class SealUse < Formula
  desc "Seal tenant and Hose approval automation CLI"
  homepage "https://git.ying-qing.cn/gitea/seal-use"
  version "0.10.42"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://git.ying-qing.cn/gitea/seal-use/releases/download/v#{version}/seal-use-darwin-arm64.tar.gz"
  sha256 "0e2915a2225139d775c965cb1a3bdf73640665cd03e87320bafe4c0e47757d80"

  def install
    bin.install "seal-use-darwin-arm64" => "seal-use"
  end

  test do
    system "#{bin}/seal-use", "version"
  end
end
