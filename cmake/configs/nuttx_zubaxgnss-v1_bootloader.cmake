include(nuttx/px4_impl_nuttx)

px4_nuttx_configure(HWCLASS m3 CONFIG bootloader)

set(px4_src_base ${CMAKE_SOURCE_DIR}/src/)
set(px4_bootloader_base ${px4_src_base}drivers/bootloaders/)
set(px4_module_base ${px4_src_base}modules/)

#
# UAVCAN boot loadable Module ID

#
# Bring in common uavcan hardware identity definitions
#

include(configs/uavcan_board_ident/zubaxgnss-v1)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/toolchains/Toolchain-arm-none-eabi.cmake)

set(config_module_list
	drivers/boards/zubaxgnss-v1/bootloader
)
