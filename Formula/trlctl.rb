class Trlctl < Formula
  desc "Scaffold and validate repositories that follow the therealm Argo CD layout"
  homepage "https://github.com/therealm-tech/trlctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.1.0/trlctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d7a027d3ebb41af1080f17c3b0b9a3593b582e92d99fc6d1a3da4635d833bc51"
    end
    on_intel do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.1.0/trlctl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b07b8dee3b5e5f29cdf44b7519e79d549598fbdd3f5a62fa0aeabac367ecc08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.1.0/trlctl-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0172e06fbe7610c60f514d5a8be3c2b51cce390aa67537e7e3ae43f812d22b4"
    end
    on_intel do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.1.0/trlctl-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ccd8a306c57c2fbc922f7c558a18a2dc89418f4c171cf626760c5b29f4cf9e0"
    end
  end

  def install
    bin.install "trlctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/trlctl --version")
  end
end
