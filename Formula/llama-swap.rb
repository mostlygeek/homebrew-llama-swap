class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/mostlygeek/llama-swap"
  version "236"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_arm64.tar.gz"
      sha256 "94d50dc65fba4a8ba5bc4ade3578ed3a2727ddf4aa7e160656c5f922c4d45405"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_amd64.tar.gz"
      sha256 "15f0400cc2e202602a93239df9b88b0b5e21c53b505501c8c01ed89c8af46a33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_arm64.tar.gz"
      sha256 "d3e9cd0f8e8b1f4979f6fd7969d7987452e186f3463f3e5f8de135e0ca596515"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_amd64.tar.gz"
      sha256 "746e56f4b8b3da6bd2a9bd4d3757f1dd6fe3e10e9836e53476270ceab71dec35"
    end
  end

  def install
    bin.install "llama-swap"
  end

  test do
    system "#{bin}/llama-swap", "--version"
  end
end
