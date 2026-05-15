class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/mostlygeek/llama-swap"
  version "214"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_arm64.tar.gz"
      sha256 "71e4343f5f6c9f3b7dc6a4769e0deb0c9ffe1e8e81d182b5eb807e27c1364b11"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_amd64.tar.gz"
      sha256 "01f3c9b0808565c67175f0bae5e0a36defca6fd57b48828025477ae19c0a4cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_arm64.tar.gz"
      sha256 "61f39d8a9c9d7317e98f897394966092d4ed1ed6e4f51020f36abf0211d7ce9b"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_amd64.tar.gz"
      sha256 "7cd132f1e232f203db7d90e8bf62f341213587d38b6dab47d875ec68220c127c"
    end
  end

  def install
    bin.install "llama-swap"
  end

  test do
    system "#{bin}/llama-swap", "--version"
  end
end
