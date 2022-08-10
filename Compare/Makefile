.PHONY: com sim clean

OUTPUT = simv
ALL_DEFINE = +define+DUMP_VPD

# vpd file name
VPD_NAME = +vpdfile+$(OUTPUT).vpd

VCS = vcs +v2k -override_timescale=1ns/100ps\
			-full64\
			-fsdb\
			-debug_all\
			-sverilog\
			+nospecify\
			+vcs+flush+all\
			-o $(OUTPUT)\
			-l compile.log

SIM = ./$(OUTPUT)\
			+ntb_random_seed_automatic\
			$(VPD_NAME)\
			$(ALL_DEFINE)\
			-l $(OUTPUT).log

#star compile
com:
	$(VCS) -f file_list.f

#start simylation
sim:
	$(SIM)

#start clean
clean:
	rm -rf ./csrc *.daidir ./csrc \
	*.log *.vpd *.vdb simv* *.ket \
	*.race.out novas* verdi* *fsdb apd2apd_async
