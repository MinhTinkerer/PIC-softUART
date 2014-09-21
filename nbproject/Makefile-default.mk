#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=cpu/cpu.c cpu/CPU_EnableAll_Int.asm src/interruptions.c src/main.c sw_uart/openuart.asm sw_uart/readuart.asm sw_uart/sw_serial_delays.c sw_uart/uartdata.asm sw_uart/writuart.asm cpu/CPU_disableAll_Int.asm delaysTCY/d1tcyx.asm delaysTCY/d4tcyx.asm

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/cpu/cpu.p1 ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj ${OBJECTDIR}/src/interruptions.p1 ${OBJECTDIR}/src/main.p1 ${OBJECTDIR}/sw_uart/openuart.obj ${OBJECTDIR}/sw_uart/readuart.obj ${OBJECTDIR}/sw_uart/sw_serial_delays.p1 ${OBJECTDIR}/sw_uart/uartdata.obj ${OBJECTDIR}/sw_uart/writuart.obj ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj ${OBJECTDIR}/delaysTCY/d1tcyx.obj ${OBJECTDIR}/delaysTCY/d4tcyx.obj
POSSIBLE_DEPFILES=${OBJECTDIR}/cpu/cpu.p1.d ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj.d ${OBJECTDIR}/src/interruptions.p1.d ${OBJECTDIR}/src/main.p1.d ${OBJECTDIR}/sw_uart/openuart.obj.d ${OBJECTDIR}/sw_uart/readuart.obj.d ${OBJECTDIR}/sw_uart/sw_serial_delays.p1.d ${OBJECTDIR}/sw_uart/uartdata.obj.d ${OBJECTDIR}/sw_uart/writuart.obj.d ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj.d ${OBJECTDIR}/delaysTCY/d1tcyx.obj.d ${OBJECTDIR}/delaysTCY/d4tcyx.obj.d

# Object Files
OBJECTFILES=${OBJECTDIR}/cpu/cpu.p1 ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj ${OBJECTDIR}/src/interruptions.p1 ${OBJECTDIR}/src/main.p1 ${OBJECTDIR}/sw_uart/openuart.obj ${OBJECTDIR}/sw_uart/readuart.obj ${OBJECTDIR}/sw_uart/sw_serial_delays.p1 ${OBJECTDIR}/sw_uart/uartdata.obj ${OBJECTDIR}/sw_uart/writuart.obj ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj ${OBJECTDIR}/delaysTCY/d1tcyx.obj ${OBJECTDIR}/delaysTCY/d4tcyx.obj

# Source Files
SOURCEFILES=cpu/cpu.c cpu/CPU_EnableAll_Int.asm src/interruptions.c src/main.c sw_uart/openuart.asm sw_uart/readuart.asm sw_uart/sw_serial_delays.c sw_uart/uartdata.asm sw_uart/writuart.asm cpu/CPU_disableAll_Int.asm delaysTCY/d1tcyx.asm delaysTCY/d4tcyx.asm


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4680
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/cpu/cpu.p1: cpu/cpu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/cpu 
	@${RM} ${OBJECTDIR}/cpu/cpu.p1.d 
	@${RM} ${OBJECTDIR}/cpu/cpu.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/cpu/cpu.p1  cpu/cpu.c 
	@-${MV} ${OBJECTDIR}/cpu/cpu.d ${OBJECTDIR}/cpu/cpu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/cpu/cpu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/interruptions.p1: src/interruptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/interruptions.p1.d 
	@${RM} ${OBJECTDIR}/src/interruptions.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/interruptions.p1  src/interruptions.c 
	@-${MV} ${OBJECTDIR}/src/interruptions.d ${OBJECTDIR}/src/interruptions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/interruptions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/main.p1  src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/sw_serial_delays.p1: sw_uart/sw_serial_delays.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/sw_serial_delays.p1.d 
	@${RM} ${OBJECTDIR}/sw_uart/sw_serial_delays.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/sw_uart/sw_serial_delays.p1  sw_uart/sw_serial_delays.c 
	@-${MV} ${OBJECTDIR}/sw_uart/sw_serial_delays.d ${OBJECTDIR}/sw_uart/sw_serial_delays.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/sw_serial_delays.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/cpu/cpu.p1: cpu/cpu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/cpu 
	@${RM} ${OBJECTDIR}/cpu/cpu.p1.d 
	@${RM} ${OBJECTDIR}/cpu/cpu.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/cpu/cpu.p1  cpu/cpu.c 
	@-${MV} ${OBJECTDIR}/cpu/cpu.d ${OBJECTDIR}/cpu/cpu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/cpu/cpu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/interruptions.p1: src/interruptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/interruptions.p1.d 
	@${RM} ${OBJECTDIR}/src/interruptions.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/interruptions.p1  src/interruptions.c 
	@-${MV} ${OBJECTDIR}/src/interruptions.d ${OBJECTDIR}/src/interruptions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/interruptions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/src/main.p1  src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/sw_serial_delays.p1: sw_uart/sw_serial_delays.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/sw_serial_delays.p1.d 
	@${RM} ${OBJECTDIR}/sw_uart/sw_serial_delays.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/sw_uart/sw_serial_delays.p1  sw_uart/sw_serial_delays.c 
	@-${MV} ${OBJECTDIR}/sw_uart/sw_serial_delays.d ${OBJECTDIR}/sw_uart/sw_serial_delays.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/sw_serial_delays.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj: cpu/CPU_EnableAll_Int.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/cpu 
	@${RM} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj.d 
	@${RM} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj  cpu/CPU_EnableAll_Int.asm 
	@-${MV} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.d ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/openuart.obj: sw_uart/openuart.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/openuart.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/openuart.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/openuart.obj  sw_uart/openuart.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/openuart.d ${OBJECTDIR}/sw_uart/openuart.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/openuart.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/readuart.obj: sw_uart/readuart.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/readuart.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/readuart.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/readuart.obj  sw_uart/readuart.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/readuart.d ${OBJECTDIR}/sw_uart/readuart.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/readuart.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/uartdata.obj: sw_uart/uartdata.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/uartdata.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/uartdata.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/uartdata.obj  sw_uart/uartdata.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/uartdata.d ${OBJECTDIR}/sw_uart/uartdata.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/uartdata.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/writuart.obj: sw_uart/writuart.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/writuart.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/writuart.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/writuart.obj  sw_uart/writuart.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/writuart.d ${OBJECTDIR}/sw_uart/writuart.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/writuart.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/cpu/CPU_disableAll_Int.obj: cpu/CPU_disableAll_Int.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/cpu 
	@${RM} ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj.d 
	@${RM} ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/cpu/CPU_disableAll_Int.obj  cpu/CPU_disableAll_Int.asm 
	@-${MV} ${OBJECTDIR}/cpu/CPU_disableAll_Int.d ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/delaysTCY/d1tcyx.obj: delaysTCY/d1tcyx.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/delaysTCY 
	@${RM} ${OBJECTDIR}/delaysTCY/d1tcyx.obj.d 
	@${RM} ${OBJECTDIR}/delaysTCY/d1tcyx.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/delaysTCY/d1tcyx.obj  delaysTCY/d1tcyx.asm 
	@-${MV} ${OBJECTDIR}/delaysTCY/d1tcyx.d ${OBJECTDIR}/delaysTCY/d1tcyx.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/delaysTCY/d1tcyx.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/delaysTCY/d4tcyx.obj: delaysTCY/d4tcyx.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/delaysTCY 
	@${RM} ${OBJECTDIR}/delaysTCY/d4tcyx.obj.d 
	@${RM} ${OBJECTDIR}/delaysTCY/d4tcyx.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/delaysTCY/d4tcyx.obj  delaysTCY/d4tcyx.asm 
	@-${MV} ${OBJECTDIR}/delaysTCY/d4tcyx.d ${OBJECTDIR}/delaysTCY/d4tcyx.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/delaysTCY/d4tcyx.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj: cpu/CPU_EnableAll_Int.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/cpu 
	@${RM} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj.d 
	@${RM} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj  cpu/CPU_EnableAll_Int.asm 
	@-${MV} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.d ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/cpu/CPU_EnableAll_Int.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/openuart.obj: sw_uart/openuart.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/openuart.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/openuart.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/openuart.obj  sw_uart/openuart.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/openuart.d ${OBJECTDIR}/sw_uart/openuart.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/openuart.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/readuart.obj: sw_uart/readuart.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/readuart.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/readuart.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/readuart.obj  sw_uart/readuart.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/readuart.d ${OBJECTDIR}/sw_uart/readuart.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/readuart.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/uartdata.obj: sw_uart/uartdata.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/uartdata.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/uartdata.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/uartdata.obj  sw_uart/uartdata.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/uartdata.d ${OBJECTDIR}/sw_uart/uartdata.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/uartdata.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/sw_uart/writuart.obj: sw_uart/writuart.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/sw_uart 
	@${RM} ${OBJECTDIR}/sw_uart/writuart.obj.d 
	@${RM} ${OBJECTDIR}/sw_uart/writuart.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/sw_uart/writuart.obj  sw_uart/writuart.asm 
	@-${MV} ${OBJECTDIR}/sw_uart/writuart.d ${OBJECTDIR}/sw_uart/writuart.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/sw_uart/writuart.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/cpu/CPU_disableAll_Int.obj: cpu/CPU_disableAll_Int.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/cpu 
	@${RM} ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj.d 
	@${RM} ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/cpu/CPU_disableAll_Int.obj  cpu/CPU_disableAll_Int.asm 
	@-${MV} ${OBJECTDIR}/cpu/CPU_disableAll_Int.d ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/cpu/CPU_disableAll_Int.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/delaysTCY/d1tcyx.obj: delaysTCY/d1tcyx.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/delaysTCY 
	@${RM} ${OBJECTDIR}/delaysTCY/d1tcyx.obj.d 
	@${RM} ${OBJECTDIR}/delaysTCY/d1tcyx.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/delaysTCY/d1tcyx.obj  delaysTCY/d1tcyx.asm 
	@-${MV} ${OBJECTDIR}/delaysTCY/d1tcyx.d ${OBJECTDIR}/delaysTCY/d1tcyx.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/delaysTCY/d1tcyx.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/delaysTCY/d4tcyx.obj: delaysTCY/d4tcyx.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/delaysTCY 
	@${RM} ${OBJECTDIR}/delaysTCY/d4tcyx.obj.d 
	@${RM} ${OBJECTDIR}/delaysTCY/d4tcyx.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"  -o${OBJECTDIR}/delaysTCY/d4tcyx.obj  delaysTCY/d4tcyx.asm 
	@-${MV} ${OBJECTDIR}/delaysTCY/d4tcyx.d ${OBJECTDIR}/delaysTCY/d4tcyx.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/delaysTCY/d4tcyx.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        -odist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -DFOSC=18432000 -DSWBAUD=19200 -P -N255 -I"inc" -I"cpu" -I"sw_uart" -I"delaysTCY" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -odist/${CND_CONF}/${IMAGE_TYPE}/PIC-softUART.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
