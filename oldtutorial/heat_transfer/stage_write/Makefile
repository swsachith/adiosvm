include ../make.settings

## Set ADIOS_DIR here or before doing make
override ADIOS_INC=`${ADIOS_DIR}/bin/adios_config -c`
override ADIOS_CLIB=`${ADIOS_DIR}/bin/adios_config -l`


default: stage_write 
all: default

OBJS = utils.o decompose_block.o 

%.o: %.c
	${CC} ${CFLAGS} -c ${ADIOS_INC} $<

stage_write: ${OBJS} stage_write.o
	${CC} ${LDFLAGS} -o stage_write ${OBJS} stage_write.o ${ADIOS_CLIB}

test_decompose: ${OBJS} test_decompose.o 
	${CC} ${LDFLAGS} -o test_decompose ${OBJS} test_decompose.o ${ADIOS_CLIB}

clean:
	rm -f *.o *.mod *.fh core.*
	rm -f stage_write


distclean: clean
	rm -f log.* dataspaces.conf conf srv.lck *.bp

