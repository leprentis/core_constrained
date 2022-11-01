include ../default_targets.h

test: grid_generation secondary1.dockout secondary2.dockout secondary3.dockout secondary4.dockout secondary5.dockout secondary6.dockout secondary7.dockout

grid_generation:
	cd ../grid_generation && make test

clean: clean_dock
	/bin/rm -f secondary1*mol2 secondary2*mol2 secondary3*mol2 
	/bin/rm -f secondary4*mol2 secondary5*mol2 secondary6*mol2
	/bin/rm -f secondary7*mol2
