# typed: false
# frozen_string_literal: true

class Decloak < Formula
  desc "Find instructions hidden in AI agent skills, rules files, and MCP servers"
  homepage "https://github.com/dorgrn/decloak"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dorgrn/decloak/releases/download/v0.6.0/decloak_0.6.0_darwin_amd64.tar.gz"
      sha256 "0bb59536faa3dd9db967abd014712bc93c07c1c7567f359108e060fbe87d5299"

      define_method(:install) do
        bin.install "decloak"
        bin.install "decloak-judge"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dorgrn/decloak/releases/download/v0.6.0/decloak_0.6.0_darwin_arm64.tar.gz"
      sha256 "c63d6e777e7536e783752bdb8a20eb95ac1a5512b252bb6c58ddb5be015be018"

      define_method(:install) do
        bin.install "decloak"
        bin.install "decloak-judge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/dorgrn/decloak/releases/download/v0.6.0/decloak_0.6.0_linux_amd64.tar.gz"
      sha256 "439efb4e5552817dfc73ff8aa7fc081c6f58e80e9dd1a4dd1bc6a1d3dd94f6a4"

      define_method(:install) do
        bin.install "decloak"
        bin.install "decloak-judge"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dorgrn/decloak/releases/download/v0.6.0/decloak_0.6.0_linux_arm64.tar.gz"
      sha256 "44391b7d10ac9a02910e907907be751cdae869ab51457264d72db2bfcc98350b"

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
