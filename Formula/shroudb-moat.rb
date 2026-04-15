class ShroudbMoat < Formula
  desc "Unified security hub embedding all ShrouDB engines in a single binary"
  homepage "https://github.com/shroudb/shroudb-moat"
  version "2.0.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9460cf2d7c59756395233e121064418f4339f824251e0fa61d9f489edd2c4fdf"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "553b5d0e0da2a4c746a4f77633fd4db257a1bcc3083693baeccbb24a49312b38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd1d76b4cef1cb4a087b61987ac181b65d394f9132952043d11ee15dcb87b9a6"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-moat/releases/download/v#{version}/shroudb-moat-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d9dcc9591ab32f021550c6747fc300116f6fb576f1f0d26863105cd0ad464511"
    end
  end

  def install
    bin.install "shroudb-moat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-moat --version")
  end
end
