#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/GameObject.o \
	${OBJECTDIR}/Block.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lGLBatch.h -lGLBatchBase.h -lGLFrame.h -lGLFrustum.h -lGLGeometryTransform.h -lGLMatrixStack.h -lGLShaderManager.h -lGLTools.h -lGLTriangleBatch.h -lStopWatch.h -lmath3d.h -lglew.h -lglxew.h -lwglew.h -lfreeglut.h -lfreeglut_ext.h -lfreeglut_std.h -lglut.h -dynamic -static

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pacman

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pacman: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pacman ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/GameObject.o: GameObject.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../glm/glm -I../OpenGL/freeglut-2.6.0/include -I../OpenGL/Src/GLTools/include -I../OpenGL/freeglut-2.6.0/include/GL -I../OpenGL/Src/GLTools/include/GL -I../OpenGL/Src/GLTools/src -MMD -MP -MF $@.d -o ${OBJECTDIR}/GameObject.o GameObject.cpp

${OBJECTDIR}/Block.o: Block.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../glm/glm -I../OpenGL/freeglut-2.6.0/include -I../OpenGL/Src/GLTools/include -I../OpenGL/freeglut-2.6.0/include/GL -I../OpenGL/Src/GLTools/include/GL -I../OpenGL/Src/GLTools/src -MMD -MP -MF $@.d -o ${OBJECTDIR}/Block.o Block.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I../glm/glm -I../OpenGL/freeglut-2.6.0/include -I../OpenGL/Src/GLTools/include -I../OpenGL/freeglut-2.6.0/include/GL -I../OpenGL/Src/GLTools/include/GL -I../OpenGL/Src/GLTools/src -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/pacman

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
