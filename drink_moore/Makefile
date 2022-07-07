RTL_PATH = drink_moore.v
TB_PATH = drink_moore.sv

all: clean com sim run_dve

clean:
	rm -rf *.log csrc *simv* *.vpd DVEfiles converage *.vdb *.key

com:
	vcs -sverilog -debug_all ${RTL_PATH} ${TB_PATH} -l com.log

sim:
	./simv -l sim.log

run_dve:
	dve -vpd vcdplus.vpd &

