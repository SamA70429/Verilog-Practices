.PHONY: com sim cov clean debug

OUTPUT = simv
ALL_DEFINE = +define+DUMP_VPD

# Code converage command
CM = -cm line+cond+fsm+branch+tgl  #输出覆盖率的选项 分别为 语句覆盖率+条件覆盖率+状态机覆盖率+分支覆盖率+翻转覆盖率
CM_NAME = -cm_name $(OUTPUT)       #导出覆盖率文件名
CM_DIR = -cm_dir ./$(OUTPUT).vdb   #导出覆盖率路径

# vpd file name
VPD_NAME = +vpdfile+$(OUTPUT).vpd  #导出VPD文件名

# compile command
# vcs +2001年后verilog语法 -覆盖timescale
# -fsdb 导出fsdb文件
VCS = vcs +v2k -override_timescale=1ns/100ps \
			-full64                          \
			-fsdb                            \
			-debug_all                       \
			-sverilog                        \
			+nospecify                       \
			+vcs+flush+all                   \
			-o  $(OUTPUT)                    \
			-l	compile.log                  \

# simulation command
# 添加随机种子
SIM = ./$(OUTPUT)				 \
	  +ntb_random_seed_automatic \
	  $(CM) $(CM_NAME) $(CM_DIR) \
	  $(VPD_NAME)				 \
	  $(ALL_DEFINE)				 \
	  -l $(OUTPUT).log

# start compile
com:
	$(VCS) -f file_list.f

# start simulation
sim:
	$(SIM)

# show the converage 执行覆盖率
cov:
	dve -covdir *vdb &

debug:
	dve -vpd $(OUTPUT).vpd &

# start clean
clean:
	rm -rf ./csrc *.daidir ./csrc  \
	*.log *.vpd *.vdb simv* *.key  \
	*.race.out* novas* verdi* *fsdb apd2apd_async
