class Trlctl < Formula
  desc "Scaffold and validate repositories that follow the therealm Argo CD layout"
  homepage "https://github.com/therealm-tech/trlctl"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.2.0/trlctl-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7800519f26d864da468df4a793af0b7798308d54428addf18a549a8f0f1bfb18"
    end
    on_intel do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.2.0/trlctl-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e3b20b3558f26e3d704d972d4a7a54cb4ff345daa91793edbb3e7771a73afc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.2.0/trlctl-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46d40b5d142bb33f4dc56ebfbbf011d4a5772bfc77f62433cd7c55729f6b10dc"
    end
    on_intel do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.2.0/trlctl-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24a356fcc6e5addbb0f3bed908977f7a1f680eaba7d37c42157502d1c8724239"
    end
  end

  def install
    bin.install "trlctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/trlctl --version")
  end
end
