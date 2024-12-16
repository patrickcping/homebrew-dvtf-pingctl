class DvtfPingctl < Formula
    desc "A simple CLI tool to assist HCL generation and debugging with using the DaVinci Terraform provider from Ping Identity."
    homepage "https://github.com/patrickcping/dvtf-pingctl"
    license "MIT"
    version "0.4.1"
  
    head "https://github.com/patrickcping/dvtf-pingctl.git"
  
    on_macos do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_arm64.tar.gz"
        sha256 "8c3c940058b42bccc4832ae5c0d9ebddea322e27189603dd47b86cc84d537814"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_amd64.tar.gz"
        sha256 "2b087f1e5ec8faa0a9257a8f8578cf23ce922cf2f321f07306a6ac69a0cc4a11"
      end
    end
  
    on_linux do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_arm64.tar.gz"
        sha256 "0665b48bf200c61882c07c156e256ec6003b130a33da74cc7e793e2fd699d627"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_amd64.tar.gz"
        sha256 "7ed4d4a595f4430c58b968b4a1a81992b59d3c2c65df61ac70f939ba089ea0ba"
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