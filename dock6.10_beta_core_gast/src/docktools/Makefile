# DOCK docktools Makefile.
# This is for building the docktools executables from source files.
# It merely invokes make with the appropriate target, for example install
# or clean, in all the specified source subdirectories.

BIN = ../../bin/
SCRIPTS = make_phimap 

all: install

install:
	$(MAKE) -C chemgrids  install
	$(MAKE) -C solvgrids  install
	$(MAKE) -C convgrids  install
	cp -p $(SCRIPTS) $(BIN)

clean:
	$(MAKE) -C chemgrids  clean
	$(MAKE) -C solvgrids  clean
	$(MAKE) -C convgrids  clean

realclean:
	$(MAKE) -C chemgrids  realclean
	$(MAKE) -C solvgrids  realclean
	$(MAKE) -C convgrids  realclean

uninstall:
	$(MAKE) -C chemgrids  uninstall
	$(MAKE) -C solvgrids  uninstall
	$(MAKE) -C convgrids  uninstall
	$(MAKE) -C $(BIN) && /bin/rm -f $(PROGS) $(SCRIPTS)

