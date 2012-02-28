all: cascade

cascade: cascade.cc model.cc model.h
	mex -o cascade							\
	CXXFLAGS="\$$CXXFLAGS -O3 -march=nocona -fomit-frame-pointer"	\
	cascade.cc model.cc

clean:
	rm *.mex*
