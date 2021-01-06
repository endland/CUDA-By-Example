NVCCFLAGS 	:= -g --use_fast_math
LIBS		:= -Xlinker -lglut -lOpenGL
SRCS 		= $(wildcard *.cu)
BINS 		= $(patsubst %.cu,%,$(SRCS))

all: $(BINS)
		
%: %.cu
	nvcc $(NVCCFLAGS) $(LIBS) $< -o ./bin/$@

clean:
	rm ./bin/*
