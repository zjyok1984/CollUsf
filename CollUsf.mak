#########################################################################
#                   XJ SOFTWARE MODULE HEADER                         	#
#########################################################################
#              (c) Copyright XJ Group Corporation,                      #
# description:                                                          #
#     makefile for mcomframe project                                    #
# MODIFICATION LOG :                                                    #
# 06/11/19  ZJY   01      Created	     		                 		#
#########################################################################

TARGET = CollUsf

BINDIR = ./bin
LIBDIR =
OBJDIR = ./obj
INCDIR = -I./inc
SRCDIR = ./src

DFLAGS =
LIBPATH =
LIBS =
LIST = >> cc.lst 2>&1

CROSS = arm-linux-gnueabihf-
CC=$(CROSS)gcc
RM=del

OBJECTS = \
	$(OBJDIR)/collusf.o \
	$(OBJDIR)/main.o \

all: $(BINDIR)/$(TARGET)
	echo "FINISHED GENERATING $(TARGET) EXECUTABLE" $(LIST)
	echo "-----------------------------------------------------" $(LIST)

$(BINDIR)/$(TARGET) : $(OBJECTS) $(LIBS)
	$(CC) -o $(BINDIR)/$(TARGET) $(OBJECTS) $(LIBPATH) $(LIBS) $(INCDIR) $(DFLAGS) $(LIST)

$(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) -c $< $(INCDIR) $(DFLAGS) -o $@ $(LIST)

clean:
	$(RM) cc.lst
	$(RM) $(OBJDIR)/*.*
	$(RM) $(BINDIR)/$(TARGET)