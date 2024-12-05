class DvtfPingctl < Formula
    desc "A simple CLI tool to assist HCL generation and debugging with using the DaVinci Terraform provider from Ping Identity."
    homepage "https://github.com/patrickcping/dvtf-pingctl"
    license "MIT"
    version "0.3.0"
  
    head "https://github.com/patrickcping/dvtf-pingctl.git"
  
    on_macos do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_arm64.tar.gz"
        sha256 "cc91eef3e2c41aa92f72b12058ba5dc9a1b64e28f852106aef67c90552bc1a5a"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_amd64.tar.gz"
        sha256 "b43f850f129e0f93568292bc7d65d1abdc86a21ffa69b85f2c17892248d7670e"
      end
    end
  
    on_linux do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_arm64.tar.gz"
        sha256 "0e6e3ce88d045965e70739a0e7e11400e1eee11760eb39e0715c2841a8f6d38f"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_amd64.tar.gz"
        sha256 "9742bf3406c43d221e6a69d14d46ba4e695de996b4856c0360f16b6423d904a7"
      end
    end
  
    def install
      libexec.install Dir["*"]
  
      bin.install_symlink "#{libexec}/dvtf-pingctl" => "dvtf-pingctl"
    end
  
    test do
      system bin/"dvtf-pingctl", "-v"
    end
  end