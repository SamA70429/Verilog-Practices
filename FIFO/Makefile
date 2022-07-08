RTL_PATH = FIFO.v 
TB_PATH = FIFO_tb.v
MODULE_PATH = dp_ram.v

all: clean com sim run_dve

clean:
	rm -rf *.log csrc *simv* *.vpd DVEfiles converage *.vdb *.key

com:
	vcs -sverilog -debug_all ${RTL_PATH} ${TB_PATH} ${MODULE_PATH} -l com.log

sim:
	./simv -l sim.log

run_dve:
	dve -vpd vcdplus.vpd &

