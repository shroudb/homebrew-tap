class ShroudbAuth < Formula
  desc "Authentication and authorization service for ShrouDB"
  homepage "https://github.com/shroudb/shroudb-auth"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-auth/releases/download/v#{version}/shroudb-auth-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a78324bf750904406f6f7354d17dab67c330c20119f0dfc626b93bf6a3467575"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-auth/releases/download/v#{version}/shroudb-auth-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3544d26bfb5b875f85ae8b2b84e5318a2e4bb03eec10e327d999c01bedb34213"
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
