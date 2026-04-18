class ShroudbScroll < Formula
  desc "Durable append-only event log with cursored readers and reader groups"
  homepage "https://github.com/shroudb/shroudb-scroll"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "278553d514ea2068fe625a64cdd54732cf4423261f1621c44793f5daa62a6211"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9de61a8852f1f6744b632a0638fcbff63353af47aa3a30b4faefe25dfeeaaefd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dde0b7b7beaa1c7b771cc01f378fbae4ffea338056545f85d2e80e0158ce3b04"
    end

    on_arm do
      url "https://github.com/shroudb/shroudb-scroll/releases/download/v#{version}/shroudb-scroll-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d3335575076d300b8d12a51ecff0d8dba6326133dd5d9c4a24ebebfea750dd0"
    end
  end

  def install
    bin.install "shroudb-scroll"
    bin.install "shroudb-scroll-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shroudb-scroll --version")
  end
end
