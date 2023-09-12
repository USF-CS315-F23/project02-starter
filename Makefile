PROGS = max3 swap sort fibrec
MAX3_OBJS = max3.o max3_c.o max3_s.o
SWAP_OBJS = swap.o swap_c.o swap_s.o
SORT_OBJS = sort.o sort_c.o sort_s.o swap_c.o swap_s.o
FIBREC_OBJS = fibrec.o fibrec_c.o fibrec_s.o

%.o: %.s
	as -g -o $@ $<

%.o: %.c
	gcc -c -g -o $@ $<

all: $(PROGS)

max3: $(MAX3_OBJS)
	gcc -g -o $@ $^

swap: $(SWAP_OBJS)
	gcc -g -o $@ $^

sort: $(SORT_OBJS)
	gcc -g -o $@ $^

fibrec: $(FIBREC_OBJS)
	gcc -g -o $@ $^


clean:
	rm -rf $(PROGS) $(MAX3_OBJS) $(SWAP_OBJS) $(SORT_OBJS) $(FIBREC_OBJS)
