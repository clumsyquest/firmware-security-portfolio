#!/bin/bash

echo "Création de la structure GitHub..."

# Création des dossiers principaux
mkdir -p 00_TEMPLATES
mkdir -p 01_BARE_METAL/01_stm32_gpio_blink
mkdir -p 01_BARE_METAL/02_interruptions_uart
mkdir -p 01_BARE_METAL/03_timer_pwm
mkdir -p 02_C_VULNERABILITIES/01_buffer_overflow_lab
mkdir -p 02_C_VULNERABILITIES/02_heap_overflow
mkdir -p 02_C_VULNERABILITIES/03_format_string
mkdir -p 03_ASM_REVERSE/01_asm_basics
mkdir -p 03_ASM_REVERSE/02_function_calling
mkdir -p 03_ASM_REVERSE/03_c_to_asm_translation
mkdir -p 04_LINUX_EMBARQUE/01_buildroot_custom
mkdir -p 04_LINUX_EMBARQUE/02_yocto_bsp
mkdir -p 04_LINUX_EMBARQUE/03_bootloader_uboot
mkdir -p 05_FIRMWARE_DUMP/01_router_dump_tp-link
mkdir -p 05_FIRMWARE_DUMP/02_stm32_flash_read
mkdir -p 05_FIRMWARE_DUMP/03_uart_sniffing
mkdir -p 06_HARDWARE_DEBUG/01_swd_jtag_setup
mkdir -p 06_HARDWARE_DEBUG/02_uart_communication
mkdir -p 06_HARDWARE_DEBUG/03_spi_i2c_sniffing
mkdir -p 07_EXPLOITS/01_rop_chain
mkdir -p 07_EXPLOITS/02_stack_pivot
mkdir -p 07_EXPLOITS/03_shellcode_arm
mkdir -p 08_SECURITY_FEATURES/01_secure_boot_impl
mkdir -p 08_SECURITY_FEATURES/02_trustzone_example
mkdir -p 08_SECURITY_FEATURES/03_crypto_embedded
mkdir -p 09_AUTOMATION_TOOLS
mkdir -p 10_MAJOR_PROJECTS/01_ip_camera_audit
mkdir -p 10_MAJOR_PROJECTS/02_smart_plug_audit
mkdir -p 10_MAJOR_PROJECTS/03_industrial_controller
mkdir -p 11_CVES
mkdir -p 12_PRESENTATIONS
mkdir -p docs

echo "✅ Structure créée avec succès !"