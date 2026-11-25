class Trlctl < Formula
  desc "Scaffold and validate repositories that follow the therealm Argo CD layout"
  homepage "https://github.com/therealm-tech/trlctl"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.3.0/trlctl-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9028acda169b7875f935b87505bafec75f79a682ac9d26f1114d22c12f6cbdb1"
    end
    on_intel do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.3.0/trlctl-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "4365ea53d12f9952b65327b451c387ca1a69caefbdbab325a73bdcba295c4763"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.3.0/trlctl-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5f5da8dd0ca7c67ccf0dd912fd207e6005db0f1485b6c9cd5132ede78f3d9e84"
    end
    on_intel do
      url "https://github.com/therealm-tech/trlctl/releases/download/v0.3.0/trlctl-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53327d7ea0803f00db27fb7ca2db3bf04f2dac700a6d9b091b5a6c1b75a74f00"
    end
  end

  def install
    bin.install "trlctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/trlctl --version")
  end
end
