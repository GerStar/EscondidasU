export DEVKITPRO	:= /opt/devkitpro
export DEVKITPPC	:= $(DEVKITPRO)/devkitPPC
export PATH		:= $(DEVKITPPC)/bin:$(PATH)

TARGET		:= EscondidasU
SOURCES		:= src
INCLUDES	:= include
BUILD		:= build

all: $(TARGET).rpx

include $(DEVKITPRO)/wut/share/wut_rules

clean:
	rm -rf $(BUILD) *.elf *.rpx *.wuhb