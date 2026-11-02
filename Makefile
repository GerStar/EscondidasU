TARGET		:= EscondidasU
BUILD		:= build
SOURCES		:= src
INCLUDES	:= include

# Crea la carpeta build automáticamente si no existe
$(shell mkdir -p $(BUILD))

include $(DEVKITPRO)/wut/share/wut_rules

clean:
	rm -rf $(BUILD) *.elf *.rpx *.wuhb
