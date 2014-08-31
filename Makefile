CC=g++
POLYDIR=./lib/linux/
BUILDDIR=bin/linux/
OUTFILE=dungeonCrawler
CFLAGS=-I./inc -I$(POLYDIR)Core/Dependencies/include -I$(POLYDIR)Core/Dependencies/include/AL -I$(POLYDIR)Core/include -I$(POLYDIR)Modules/include -I$(POLYDIR)Modules/Dependencies/include -I$(POLYDIR)Modules/Dependencies/include/bullet
LDFLAGS=-lrt -ldl -lpthread $(POLYDIR)Core/lib/libPolycore.a $(POLYDIR)Core/Dependencies/lib/libfreetype.a $(POLYDIR)Core/Dependencies/lib/liblibvorbisfile.a $(POLYDIR)Core/Dependencies/lib/liblibvorbis.a $(POLYDIR)Core/Dependencies/lib/liblibogg.a $(POLYDIR)Core/Dependencies/lib/libopenal.so $(POLYDIR)Core/Dependencies/lib/libphysfs.a $(POLYDIR)Core/Dependencies/lib/libpng15.a $(POLYDIR)Core/Dependencies/lib/libz.a -lGL -lGLU -lSDL $(POLYDIR)Modules/lib/libPolycode2DPhysics.a $(POLYDIR)Modules/Dependencies/lib/libBox2D.a $(POLYDIR)Modules/lib/libPolycode3DPhysics.a $(POLYDIR)Modules/Dependencies/lib/libBulletDynamics.a $(POLYDIR)Modules/Dependencies/lib/libBulletCollision.a $(POLYDIR)Modules/Dependencies/lib/libLinearMath.a -lX11

default:
	mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) ./src/linuxMain.cpp ./src/dungeonCore.cpp -o $(BUILDDIR)$(OUTFILE) $(LDFLAGS)
	cp $(POLYDIR)Core/Assets/default.pak $(BUILDDIR)
clean:
	rm -rf $(BUILDDIR)
	
