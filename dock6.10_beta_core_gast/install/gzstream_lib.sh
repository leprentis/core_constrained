

# wget https://www.cs.unc.edu/Research/compgeom/gzstream/gzstream.tgz
# tar -xzvf gzstream.tgz
# cd gzstream
# make
instaldir=$PWD
echo ${instaldir}
cd ${instaldir}
cd ../src/dock/gzstream
gziplibdir=$PWD
echo ${gziplibdir}
export CPLUS_INCLUDE_PATH=$gziplibdir
export LIBRARY_PATH=$gziplibdir
cd ${instaldir}
make dock -e DOCKBUILDFLAGS="-lgzstream -lz"
#make utils
