include ../default_targets.h

test: 
	@# run this test only if the zap dock executable exists
	@(if [ -x "$(DOCK_BIN)/$(DOCK).pbsa" ] ; then \
	    make grid_generation ;\
	    make pbsaprimary.dockpbsaout \
	        orientflexiblecontactprimarypbsasecondarymulti.dockpbsaout \
	        orientflexiblepbsaprimary.dockpbsaout ;\
	    make verbosepbsaprimary ;\
	else \
	    echo "" ;\
	    echo "The dock6.pbsa dock executable does not exist." ;\
	    echo "    Skipping this test." ;\
	    echo "" ;\
	fi ;\
	)

verbosepbsaprimary:
	@echo
	@echo "Processing pbsa $(DOCK) test $@ in directory `pwd|sed -e's@^.*/@@'`"
	$(DOCK_BIN)/$(DOCK).pbsa -i $@.dockin -o $@.dockpbsaout -v
	../dockdif -t 2 $@.dockpbsaout.save $@.dockpbsaout

grid_generation:
	cd ../grid_generation && make test

clean: clean_dock

