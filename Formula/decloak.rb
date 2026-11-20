# typed: false
# frozen_string_literal: true

class Decloak < Formula
  desc "Find instructions hidden in AI agent skills, rules files, and MCP servers"
  homepage "https://github.com/dorgrn/decloak"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dorgrn/decloak/releases/download/v0.5.0/decloak_0.5.0_darwin_amd64.tar.gz"
      sha256 "4a7223f6d3e70938b64eb631655aca0beeeb525061add454b5d1a17189c2a1fb"

      define_method(:install) do
        bin.install "decloak"
        bin.install "decloak-judge"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dorgrn/decloak/releases/download/v0.5.0/decloak_0.5.0_darwin_arm64.tar.gz"
      sha256 "d2935c9cb746438adfe555b66e56845869e8077282a61f77fc4a2f6f68f1c6ad"

      define_method(:install) do
        bin.install "decloak"
        bin.install "decloak-judge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/dorgrn/decloak/releases/download/v0.5.0/decloak_0.5.0_linux_amd64.tar.gz"
      sha256 "97ea1b8e1833e80d6c7d03af63c3a9317cf9f99f656874a99367be244fd8e45d"

      define_method(:install) do
        bin.install "decloak"
        bin.install "decloak-judge"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dorgrn/decloak/releases/download/v0.5.0/decloak_0.5.0_linux_arm64.tar.gz"
      sha256 "00520c73ee59dd4aa887078297f6071c1ae3e538492b7ea7d7377dfda2f5398f"

      define_method(:install) do
        bin.install "decloak"
        bin.install "decloak-judge"
      end
    end
  end

  test do
    assert_match "decloak", shell_output("#{bin}/decloak --version")
  end
end
