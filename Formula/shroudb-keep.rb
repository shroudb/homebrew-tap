class ShroudbKeep < Formula
  desc "Secrets manager with path-based access control and versioning"
  homepage "https://github.com/shroudb/shroudb-keep"
  version "1.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_X86_64__"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "__SHA256_MACOS_AARCH64__"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5c1dcb5a98672e51adbbd3a6ff6a6c9d70848d6eecd810db4655c08e507ff32"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-keep/releases/download/v#{version}/shroudb-keep-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4bfec27046c4980b8d92914bfdd156ec1e60c7517377c08053827b0987230ef"
    end
  end

  def install
    bin.install "shroudb-keep"
    bin.install "shroudb-keep-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-keep --version")
  end
end
