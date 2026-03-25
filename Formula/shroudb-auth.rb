class ShroudbAuth < Formula
  desc "Authentication and authorization service for ShrouDB"
  homepage "https://github.com/shroudb/shroudb-auth"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-auth/releases/download/v#{version}/shroudb-auth-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4d99dd3c63d16373fd243b544f7baba1ad97404cafab102a4e05ca47c0d0e217"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-auth/releases/download/v#{version}/shroudb-auth-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d8ed280ea17ac7ddc3338c7e4234d3778843bd04ac575b8fa6a0c6a7180e5bc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-auth/releases/download/v#{version}/shroudb-auth-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "804b9a1b5a4e1d0ba449227f3e3ebd7ea55e7b003c285b7fb7a8330befea5f3d"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-auth/releases/download/v#{version}/shroudb-auth-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "45c6c21afb5533e492bea7066effc5120b4837c754d4463b13c2d47d52de3521"
    end
  end

  def install
    bin.install "shroudb-auth"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-auth --version")
  end
end
