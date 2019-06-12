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

LIBDIR =
OBJDIR = ./obj
SRCDIR = ./src
INCDIR = -I./inc
TARDIR = ./bin
CROSS =

DFLAGS =
LIBPATH =
LIBS =

LIST  = >> cc.lst 2>&1
CC=$(CROSS)gcc
RM=rm -rf

OBJECTS = \
	$(OBJDIR)/collusf.o \
	$(OBJDIR)/main.o \

all: $(TARDIR)/$(TARGET)
	echo "FINISHED GENERATING $(TARGET) EXECUTABLE" $(LIST)
	echo "-----------------------------------------------------" $(LIST)

$(TARDIR)/$(TARGET) : $(OBJECTS) $(LIBS)
	$(CC) -o $(TARDIR)/$(TARGET) $(OBJECTS) $(LIBPATH) $(LIBS) $(INCDIR) $(DFLAGS) $(LIST)

$(OBJDIR)/%.o : $(SRCDIR)/%.c
	mkdir -p $(OBJDIR)
	$(CC) -c $< $(INCDIR) $(DFLAGS) -o $@ $(LIST)

clean:
	$(RM) cc.lst
	$(RM) $(OBJDIR)
	$(RM) $(TARDIR)/$(TARGET)