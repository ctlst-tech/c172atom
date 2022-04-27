
run_fg:
	echo TODO

run_catom:
	build/catom config/swsys.xml

prebuild:
	./c-atom/tools/fspecgen.py --code --cmake --registry_c ./f_specs_reg.c --f_specs_dirs c-atom/f_specs/

catom: prebuild
	mkdir -p build
	cmake -B build
	cmake --build build --clean-first --target catom
