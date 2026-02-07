CC = dmc
CCFLAGS = -v1 -Ae
INCLUDE = -IC:\\tools\\dm\\stlport\\stlport -IC:\\tools\\dm\\include -I.\\include
LIBS = .\\lib\\glfw3.lib winmm.lib wsock32.lib ws2_32.lib

# SRC = unsigned

SRC = main
all: glad.obj glfw3.dll $(SRC).exe

.IGNORE
clean:
	del *.map
	del *.obj
    del *.exe
	del *.def
	del *.dll

.IGNORE
run:
	.\$(SRC)

$(SRC).exe: $(SRC).cpp
	$(CC) $(CCFLAGS) $(INCLUDE) $** glad.obj $(LIBS)

glfw3.dll: .\lib\glfw3.dll
    copy .\lib\glfw3.dll .\glfw3.dll

glad.obj: glad.c
	$(CC) -c $(CCFLAGS) $(INCLUDE) $**
