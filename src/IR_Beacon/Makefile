board := ATTinyCore:avr
port := /dev/ttyUSB1
fqbn := ${board}:attinyx5

compile:
	mkdir -p bin
	arduino-cli compile --output-dir bin -b ${fqbn} IR_beacon.ino

upload:
	arduino-cli upload -b ${fqbn} -P usbasp --input-dir bin

install-core:
	arduino-cli core install ${board}

# See this forum post about setting options:
# https://forum.arduino.cc/t/fqbn-for-attiny45/953943
details:
	arduino-cli board details -b ${fqbn}

clean:
	rm -rf bin
