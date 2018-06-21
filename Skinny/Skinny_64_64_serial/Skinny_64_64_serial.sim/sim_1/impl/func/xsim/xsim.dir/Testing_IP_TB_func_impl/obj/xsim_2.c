/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_957(char*, char *);
extern void execute_958(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_26(char*, char *);
extern void execute_34(char*, char *);
extern void execute_37(char*, char *);
extern void execute_40(char*, char *);
extern void execute_43(char*, char *);
extern void execute_45(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_64(char*, char *);
extern void execute_68(char*, char *);
extern void execute_72(char*, char *);
extern void execute_76(char*, char *);
extern void execute_80(char*, char *);
extern void execute_82(char*, char *);
extern void execute_86(char*, char *);
extern void execute_91(char*, char *);
extern void execute_95(char*, char *);
extern void execute_99(char*, char *);
extern void execute_103(char*, char *);
extern void execute_107(char*, char *);
extern void execute_111(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_121(char*, char *);
extern void execute_124(char*, char *);
extern void execute_126(char*, char *);
extern void execute_129(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_136(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_147(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_170(char*, char *);
extern void execute_174(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_184(char*, char *);
extern void execute_188(char*, char *);
extern void execute_197(char*, char *);
extern void execute_225(char*, char *);
extern void execute_233(char*, char *);
extern void execute_238(char*, char *);
extern void execute_240(char*, char *);
extern void execute_241(char*, char *);
extern void execute_251(char*, char *);
extern void execute_261(char*, char *);
extern void execute_282(char*, char *);
extern void execute_304(char*, char *);
extern void execute_313(char*, char *);
extern void execute_327(char*, char *);
extern void execute_363(char*, char *);
extern void execute_372(char*, char *);
extern void execute_383(char*, char *);
extern void execute_419(char*, char *);
extern void execute_420(char*, char *);
extern void execute_424(char*, char *);
extern void execute_429(char*, char *);
extern void execute_432(char*, char *);
extern void execute_434(char*, char *);
extern void execute_435(char*, char *);
extern void execute_436(char*, char *);
extern void execute_461(char*, char *);
extern void execute_464(char*, char *);
extern void execute_467(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_476(char*, char *);
extern void execute_480(char*, char *);
extern void execute_484(char*, char *);
extern void execute_489(char*, char *);
extern void execute_494(char*, char *);
extern void execute_501(char*, char *);
extern void execute_506(char*, char *);
extern void execute_511(char*, char *);
extern void execute_535(char*, char *);
extern void execute_542(char*, char *);
extern void execute_546(char*, char *);
extern void execute_551(char*, char *);
extern void execute_555(char*, char *);
extern void execute_565(char*, char *);
extern void execute_575(char*, char *);
extern void execute_579(char*, char *);
extern void execute_583(char*, char *);
extern void execute_587(char*, char *);
extern void execute_591(char*, char *);
extern void execute_595(char*, char *);
extern void execute_599(char*, char *);
extern void execute_603(char*, char *);
extern void execute_607(char*, char *);
extern void execute_611(char*, char *);
extern void execute_615(char*, char *);
extern void execute_619(char*, char *);
extern void execute_623(char*, char *);
extern void execute_627(char*, char *);
extern void execute_631(char*, char *);
extern void execute_633(char*, char *);
extern void execute_634(char*, char *);
extern void execute_638(char*, char *);
extern void execute_733(char*, char *);
extern void execute_741(char*, char *);
extern void execute_757(char*, char *);
extern void execute_765(char*, char *);
extern void execute_841(char*, char *);
extern void execute_876(char*, char *);
extern void execute_925(char*, char *);
extern void execute_927(char*, char *);
extern void execute_928(char*, char *);
extern void execute_931(char*, char *);
extern void execute_947(char*, char *);
extern void execute_948(char*, char *);
extern void execute_950(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_194(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_195(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_241(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_262(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_275(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_315(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_329(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_343(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_387(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_394(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_401(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_408(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_415(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_421(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_424(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_457(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_464(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_471(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_478(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_491(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_494(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_513(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_520(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_541(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_578(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_585(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_592(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_599(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_606(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_687(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_690(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_693(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_704(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_718(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_725(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_732(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_739(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_746(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_753(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_760(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_774(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_781(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_788(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_795(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_802(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_809(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_816(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_823(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_830(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_837(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_844(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_851(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_858(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_865(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_872(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_879(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_886(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_893(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_900(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_907(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_914(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_921(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_928(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_935(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_942(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_949(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_956(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_963(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[256] = {(funcp)execute_957, (funcp)execute_958, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_26, (funcp)execute_34, (funcp)execute_37, (funcp)execute_40, (funcp)execute_43, (funcp)execute_45, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_64, (funcp)execute_68, (funcp)execute_72, (funcp)execute_76, (funcp)execute_80, (funcp)execute_82, (funcp)execute_86, (funcp)execute_91, (funcp)execute_95, (funcp)execute_99, (funcp)execute_103, (funcp)execute_107, (funcp)execute_111, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_121, (funcp)execute_124, (funcp)execute_126, (funcp)execute_129, (funcp)execute_131, (funcp)execute_132, (funcp)execute_133, (funcp)execute_136, (funcp)execute_138, (funcp)execute_139, (funcp)execute_140, (funcp)execute_147, (funcp)execute_149, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)execute_165, (funcp)execute_166, (funcp)execute_170, (funcp)execute_174, (funcp)execute_178, (funcp)execute_179, (funcp)execute_180, (funcp)execute_181, (funcp)execute_184, (funcp)execute_188, (funcp)execute_197, (funcp)execute_225, (funcp)execute_233, (funcp)execute_238, (funcp)execute_240, (funcp)execute_241, (funcp)execute_251, (funcp)execute_261, (funcp)execute_282, (funcp)execute_304, (funcp)execute_313, (funcp)execute_327, (funcp)execute_363, (funcp)execute_372, (funcp)execute_383, (funcp)execute_419, (funcp)execute_420, (funcp)execute_424, (funcp)execute_429, (funcp)execute_432, (funcp)execute_434, (funcp)execute_435, (funcp)execute_436, (funcp)execute_461, (funcp)execute_464, (funcp)execute_467, (funcp)execute_469, (funcp)execute_470, (funcp)execute_471, (funcp)execute_476, (funcp)execute_480, (funcp)execute_484, (funcp)execute_489, (funcp)execute_494, (funcp)execute_501, (funcp)execute_506, (funcp)execute_511, (funcp)execute_535, (funcp)execute_542, (funcp)execute_546, (funcp)execute_551, (funcp)execute_555, (funcp)execute_565, (funcp)execute_575, (funcp)execute_579, (funcp)execute_583, (funcp)execute_587, (funcp)execute_591, (funcp)execute_595, (funcp)execute_599, (funcp)execute_603, (funcp)execute_607, (funcp)execute_611, (funcp)execute_615, (funcp)execute_619, (funcp)execute_623, (funcp)execute_627, (funcp)execute_631, (funcp)execute_633, (funcp)execute_634, (funcp)execute_638, (funcp)execute_733, (funcp)execute_741, (funcp)execute_757, (funcp)execute_765, (funcp)execute_841, (funcp)execute_876, (funcp)execute_925, (funcp)execute_927, (funcp)execute_928, (funcp)execute_931, (funcp)execute_947, (funcp)execute_948, (funcp)execute_950, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_38, (funcp)transaction_49, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_91, (funcp)transaction_98, (funcp)transaction_105, (funcp)transaction_112, (funcp)transaction_143, (funcp)transaction_144, (funcp)transaction_145, (funcp)transaction_147, (funcp)transaction_170, (funcp)transaction_177, (funcp)transaction_184, (funcp)transaction_193, (funcp)transaction_194, (funcp)transaction_195, (funcp)transaction_196, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_241, (funcp)transaction_244, (funcp)transaction_248, (funcp)transaction_255, (funcp)transaction_262, (funcp)transaction_269, (funcp)transaction_275, (funcp)transaction_278, (funcp)transaction_315, (funcp)transaction_318, (funcp)transaction_322, (funcp)transaction_329, (funcp)transaction_336, (funcp)transaction_343, (funcp)transaction_349, (funcp)transaction_352, (funcp)transaction_387, (funcp)transaction_390, (funcp)transaction_394, (funcp)transaction_401, (funcp)transaction_408, (funcp)transaction_415, (funcp)transaction_421, (funcp)transaction_424, (funcp)transaction_457, (funcp)transaction_460, (funcp)transaction_464, (funcp)transaction_471, (funcp)transaction_478, (funcp)transaction_485, (funcp)transaction_491, (funcp)transaction_494, (funcp)transaction_506, (funcp)transaction_513, (funcp)transaction_520, (funcp)transaction_527, (funcp)transaction_534, (funcp)transaction_541, (funcp)transaction_578, (funcp)transaction_585, (funcp)transaction_592, (funcp)transaction_599, (funcp)transaction_606, (funcp)transaction_684, (funcp)transaction_687, (funcp)transaction_690, (funcp)transaction_693, (funcp)transaction_697, (funcp)transaction_704, (funcp)transaction_711, (funcp)transaction_718, (funcp)transaction_725, (funcp)transaction_732, (funcp)transaction_739, (funcp)transaction_746, (funcp)transaction_753, (funcp)transaction_760, (funcp)transaction_767, (funcp)transaction_774, (funcp)transaction_781, (funcp)transaction_788, (funcp)transaction_795, (funcp)transaction_802, (funcp)transaction_809, (funcp)transaction_816, (funcp)transaction_823, (funcp)transaction_830, (funcp)transaction_837, (funcp)transaction_844, (funcp)transaction_851, (funcp)transaction_858, (funcp)transaction_865, (funcp)transaction_872, (funcp)transaction_879, (funcp)transaction_886, (funcp)transaction_893, (funcp)transaction_900, (funcp)transaction_907, (funcp)transaction_914, (funcp)transaction_921, (funcp)transaction_928, (funcp)transaction_935, (funcp)transaction_942, (funcp)transaction_949, (funcp)transaction_956, (funcp)transaction_963};
const int NumRelocateId= 256;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Testing_IP_TB_func_impl/xsim.reloc",  (void **)funcTab, 256);
	iki_vhdl_file_variable_register(dp + 196800);
	iki_vhdl_file_variable_register(dp + 196856);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Testing_IP_TB_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Testing_IP_TB_func_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern int xsim_argc_copy ;
extern char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Testing_IP_TB_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Testing_IP_TB_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Testing_IP_TB_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
