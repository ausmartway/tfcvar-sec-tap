# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TfcvarSec < Formula
  desc "The tfcvar-sec is a tool that scanns Terraform Cloud for insecure terraform/enviroment variables."
  homepage "https://github.com/ausmartway/tfcvar-sec"
  version "0.2.10"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.10/tfcvar-sec_0.2.10_darwin_arm64.tar.gz"
      sha256 "114dd20458e134381f13d0a2dccb58969f64ba25515b13f0f9cc94b33f0107e5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.10/tfcvar-sec_0.2.10_darwin_amd64.tar.gz"
      sha256 "52348af9be6923316946d2a1576a383812cd95481dc84fd1772cafa1b6e924a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.10/tfcvar-sec_0.2.10_linux_arm64.tar.gz"
      sha256 "691ccc8c75fb8a2570d94b6bbed03a5db1fdda0e76a7941dd5cb11f443777dac"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ausmartway/tfcvar-sec/releases/download/v0.2.10/tfcvar-sec_0.2.10_linux_amd64.tar.gz"
      sha256 "02e42c7aea9dc8e1e1176c5d35bca33c20827a77685d6946a98de70cceb5df6e"
    end
  end

  def install
    bin.install "tfcvar-sec"
  end

  def caveats; <<~EOS
    Type 'tfcvar-sec scan' on your command line.
  EOS
  end

  test do
    system "#{bin}/tfcvar-sec --version"
  end
end
