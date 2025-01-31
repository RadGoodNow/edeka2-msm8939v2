[Defines]
  PLATFORM_NAME                  = MSM8939v2Pkg
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = MSM8939v2Pkg/MSM8939v2Pkg.fdf

!include MSM8939v2Pkg/MSM8939v2Pkg.dsc

[PcdsFixedAtBuild.common]
  # System Memory (1.5GB)
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x83200000
  
  # Framebuffer (720x1280)
  gMSM8939v2PkgTokenSpaceGuid.PcdMipiFrameBufferAddress|0x83200000
  gMSM8939v2PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|720
  gMSM8939v2PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|1280
  gMSM8939v2PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleWidth|720
  gMSM8939v2PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleHeight|1280
