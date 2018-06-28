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
extern void execute_460(char*, char *);
extern void execute_461(char*, char *);
extern void execute_25(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_59(char*, char *);
extern void execute_62(char*, char *);
extern void execute_66(char*, char *);
extern void execute_70(char*, char *);
extern void execute_73(char*, char *);
extern void execute_77(char*, char *);
extern void execute_80(char*, char *);
extern void execute_82(char*, char *);
extern void execute_84(char*, char *);
extern void execute_87(char*, char *);
extern void execute_90(char*, char *);
extern void execute_95(char*, char *);
extern void execute_99(char*, char *);
extern void execute_102(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_143(char*, char *);
extern void execute_145(char*, char *);
extern void execute_149(char*, char *);
extern void execute_153(char*, char *);
extern void execute_157(char*, char *);
extern void execute_159(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_167(char*, char *);
extern void execute_168(char*, char *);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_183(char*, char *);
extern void execute_184(char*, char *);
extern void execute_185(char*, char *);
extern void execute_186(char*, char *);
extern void execute_195(char*, char *);
extern void execute_200(char*, char *);
extern void execute_202(char*, char *);
extern void execute_203(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
extern void execute_232(char*, char *);
extern void execute_234(char*, char *);
extern void execute_258(char*, char *);
extern void execute_261(char*, char *);
extern void execute_265(char*, char *);
extern void execute_270(char*, char *);
extern void execute_273(char*, char *);
extern void execute_276(char*, char *);
extern void execute_279(char*, char *);
extern void execute_283(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_329(char*, char *);
extern void execute_333(char*, char *);
extern void execute_337(char*, char *);
extern void execute_343(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_368(char*, char *);
extern void execute_371(char*, char *);
extern void execute_375(char*, char *);
extern void execute_379(char*, char *);
extern void execute_383(char*, char *);
extern void execute_385(char*, char *);
extern void execute_425(char*, char *);
extern void execute_429(char*, char *);
extern void execute_433(char*, char *);
extern void execute_441(char*, char *);
extern void execute_447(char*, char *);
extern void execute_449(char*, char *);
extern void execute_450(char*, char *);
extern void execute_452(char*, char *);
extern void execute_453(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_156(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_207(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_208(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_222(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_246(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_267(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_294(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_298(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_308(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_322(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_330(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_341(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_347(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_351(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_379(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_386(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_396(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_410(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_412(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_434(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_441(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_455(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_462(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_469(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_499(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_513(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_519(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[163] = {(funcp)execute_460, (funcp)execute_461, (funcp)execute_25, (funcp)execute_27, (funcp)execute_28, (funcp)execute_29, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_55, (funcp)execute_56, (funcp)execute_59, (funcp)execute_62, (funcp)execute_66, (funcp)execute_70, (funcp)execute_73, (funcp)execute_77, (funcp)execute_80, (funcp)execute_82, (funcp)execute_84, (funcp)execute_87, (funcp)execute_90, (funcp)execute_95, (funcp)execute_99, (funcp)execute_102, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_143, (funcp)execute_145, (funcp)execute_149, (funcp)execute_153, (funcp)execute_157, (funcp)execute_159, (funcp)execute_160, (funcp)execute_161, (funcp)execute_167, (funcp)execute_168, (funcp)execute_174, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_183, (funcp)execute_184, (funcp)execute_185, (funcp)execute_186, (funcp)execute_195, (funcp)execute_200, (funcp)execute_202, (funcp)execute_203, (funcp)execute_227, (funcp)execute_228, (funcp)execute_232, (funcp)execute_234, (funcp)execute_258, (funcp)execute_261, (funcp)execute_265, (funcp)execute_270, (funcp)execute_273, (funcp)execute_276, (funcp)execute_279, (funcp)execute_283, (funcp)execute_323, (funcp)execute_324, (funcp)execute_329, (funcp)execute_333, (funcp)execute_337, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_368, (funcp)execute_371, (funcp)execute_375, (funcp)execute_379, (funcp)execute_383, (funcp)execute_385, (funcp)execute_425, (funcp)execute_429, (funcp)execute_433, (funcp)execute_441, (funcp)execute_447, (funcp)execute_449, (funcp)execute_450, (funcp)execute_452, (funcp)execute_453, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_56, (funcp)transaction_65, (funcp)transaction_72, (funcp)transaction_79, (funcp)transaction_86, (funcp)transaction_93, (funcp)transaction_100, (funcp)transaction_107, (funcp)transaction_135, (funcp)transaction_142, (funcp)transaction_149, (funcp)transaction_156, (funcp)transaction_163, (funcp)transaction_170, (funcp)transaction_177, (funcp)transaction_204, (funcp)transaction_205, (funcp)transaction_206, (funcp)transaction_207, (funcp)transaction_208, (funcp)transaction_209, (funcp)transaction_215, (funcp)transaction_222, (funcp)transaction_238, (funcp)transaction_246, (funcp)transaction_253, (funcp)transaction_257, (funcp)transaction_263, (funcp)transaction_267, (funcp)transaction_279, (funcp)transaction_287, (funcp)transaction_294, (funcp)transaction_298, (funcp)transaction_304, (funcp)transaction_308, (funcp)transaction_322, (funcp)transaction_330, (funcp)transaction_337, (funcp)transaction_341, (funcp)transaction_347, (funcp)transaction_351, (funcp)transaction_371, (funcp)transaction_379, (funcp)transaction_386, (funcp)transaction_390, (funcp)transaction_396, (funcp)transaction_400, (funcp)transaction_409, (funcp)transaction_410, (funcp)transaction_412, (funcp)transaction_416, (funcp)transaction_434, (funcp)transaction_441, (funcp)transaction_448, (funcp)transaction_455, (funcp)transaction_462, (funcp)transaction_469, (funcp)transaction_485, (funcp)transaction_492, (funcp)transaction_499, (funcp)transaction_506, (funcp)transaction_513, (funcp)transaction_519};
const int NumRelocateId= 163;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Testing_IP_TB_func_impl/xsim.reloc",  (void **)funcTab, 163);
	iki_vhdl_file_variable_register(dp + 108016);
	iki_vhdl_file_variable_register(dp + 108072);


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
