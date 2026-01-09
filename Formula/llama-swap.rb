class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/mostlygeek/llama-swap"
  version "183"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_arm64.tar.gz"
      sha256 "c06e0d23d896d302aa32acff59704158af7b74cc1ae7459de77ab313f2945bb0"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_amd64.tar.gz"
      sha256 "0deaa19b6dfee0598264f48f150770ed971d1a60bcf8b4373c6e9ca888aac31a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_arm64.tar.gz"
      sha256 "90fe1c4cd1315b457d8d9674aff1fc80572d8f1c78bf4238e3b15812fb1d4e77"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_amd64.tar.gz"
      sha256 "c02e7bd4f7a971f3ba64357565d8bab3eb61d539fdd07d3a7b22cf3aa6b1f58d"
    end
  end

  def install
    bin.install "llama-swap"
  end

  test do
    system "#{bin}/llama-swap", "--version"
  end
end
