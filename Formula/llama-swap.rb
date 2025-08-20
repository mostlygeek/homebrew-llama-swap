class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/mostlygeek/llama-swap"
  version "154"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_arm64.tar.gz"
      sha256 "3e80c702a4c61effc788a70eb7151078e5f9cd2af5e7bcd70fd46fd45d9658d8"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_amd64.tar.gz"
      sha256 "f1432cafe2cc3e95ad28ec16c23f0b43b25d87e85337cdfc9dfd26db6a8c8c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_arm64.tar.gz"
      sha256 "52f79639f0079d62d830f3785b108190c4c1a7317a02884ab9eee2ad463e0a64"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_amd64.tar.gz"
      sha256 "8430cbf5793a8cd508637e8b9b8b5d9fa7dc2b965cd8dc82ca06d28146374d61"
    end
  end

  def install
    bin.install "llama-swap"
  end

  test do
    system "#{bin}/llama-swap", "--version"
  end
end
