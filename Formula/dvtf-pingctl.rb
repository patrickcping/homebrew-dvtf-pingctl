class DvtfPingctl < Formula
    desc "A simple CLI tool to assist HCL generation and debugging with using the DaVinci Terraform provider from Ping Identity."
    homepage "https://github.com/patrickcping/dvtf-pingctl"
    license "MIT"
    version "0.1.1"
  
    head "https://github.com/patrickcping/dvtf-pingctl.git"
  
    on_macos do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_arm64.tar.gz"
        sha256 "94fb5acfb392e51d4b530e8818dedcc9baa36ac4b678f16b0eff16ecf504ce13"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_darwin_amd64.tar.gz"
        sha256 "803901ad35a0f038c109c10b5e259e1c329667a19fa354f23b961feb5592d744"
      end
    end
  
    on_linux do
      on_arm do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_arm64.tar.gz"
        sha256 "07c73e1b9993718ddf1187df8efa687a39141b59e1009d65ae169c41bba3c1e8"
      end
      on_intel do
        url "https://github.com/patrickcping/dvtf-pingctl/releases/download/v#{version}/dvtf-pingctl_linux_amd64.tar.gz"
        sha256 "5c5abef3014cb8c32df77b190eb350a9534a3147d418e51dcbf92d65b2a399c1"
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