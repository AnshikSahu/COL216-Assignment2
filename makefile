all: sample sample.cpp pipeline.hpp parser.hpp simulator.hpp requirements.hpp

sample: sample.cpp pipeline.hpp parser.hpp simulator.hpp configuration.hpp requirements.hpp
	g++ requirements.hpp pipeline.hpp parser.hpp simulator.hpp configuration.hpp sample.cpp -o sample

clean:
	rm sample

run: sample
	./sample sample.asm
