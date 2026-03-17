build:
	cmake -B build && cd ./build && cmake --build . && cd ../

run:
	./build/hello_cmake