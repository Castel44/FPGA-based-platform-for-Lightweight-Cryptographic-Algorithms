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
extern void execute_835(char*, char *);
extern void execute_836(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_40(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_45(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_74(char*, char *);
extern void execute_108(char*, char *);
extern void execute_116(char*, char *);
extern void execute_130(char*, char *);
extern void execute_158(char*, char *);
extern void execute_167(char*, char *);
extern void execute_172(char*, char *);
extern void execute_232(char*, char *);
extern void execute_241(char*, char *);
extern void execute_245(char*, char *);
extern void execute_249(char*, char *);
extern void execute_251(char*, char *);
extern void execute_322(char*, char *);
extern void execute_323(char*, char *);
extern void execute_327(char*, char *);
extern void execute_342(char*, char *);
extern void execute_346(char*, char *);
extern void execute_350(char*, char *);
extern void execute_354(char*, char *);
extern void execute_356(char*, char *);
extern void execute_359(char*, char *);
extern void execute_362(char*, char *);
extern void execute_364(char*, char *);
extern void execute_365(char*, char *);
extern void execute_366(char*, char *);
extern void execute_391(char*, char *);
extern void execute_395(char*, char *);
extern void execute_400(char*, char *);
extern void execute_402(char*, char *);
extern void execute_403(char*, char *);
extern void execute_404(char*, char *);
extern void execute_405(char*, char *);
extern void execute_406(char*, char *);
extern void execute_410(char*, char *);
extern void execute_415(char*, char *);
extern void execute_419(char*, char *);
extern void execute_424(char*, char *);
extern void execute_427(char*, char *);
extern void execute_429(char*, char *);
extern void execute_434(char*, char *);
extern void execute_437(char*, char *);
extern void execute_439(char*, char *);
extern void execute_444(char*, char *);
extern void execute_469(char*, char *);
extern void execute_472(char*, char *);
extern void execute_476(char*, char *);
extern void execute_481(char*, char *);
extern void execute_486(char*, char *);
extern void execute_491(char*, char *);
extern void execute_496(char*, char *);
extern void execute_499(char*, char *);
extern void execute_504(char*, char *);
extern void execute_512(char*, char *);
extern void execute_517(char*, char *);
extern void execute_518(char*, char *);
extern void execute_521(char*, char *);
extern void execute_525(char*, char *);
extern void execute_655(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_165(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_215(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_219(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_226(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_240(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_246(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_284(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_291(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_298(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_305(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_312(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_364(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_378(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_385(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_392(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_398(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_401(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_418(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_432(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_446(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_478(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_485(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_499(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_605(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_608(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_611(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_618(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_625(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_632(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_639(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_646(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_653(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_660(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_681(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_723(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_737(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_744(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_751(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_758(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_765(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_779(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_786(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_793(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_800(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_807(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_814(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_821(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_828(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_835(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_842(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_849(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_856(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_863(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[187] = {(funcp)execute_835, (funcp)execute_836, (funcp)execute_25, (funcp)execute_26, (funcp)execute_40, (funcp)execute_42, (funcp)execute_43, (funcp)execute_45, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_59, (funcp)execute_60, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_74, (funcp)execute_108, (funcp)execute_116, (funcp)execute_130, (funcp)execute_158, (funcp)execute_167, (funcp)execute_172, (funcp)execute_232, (funcp)execute_241, (funcp)execute_245, (funcp)execute_249, (funcp)execute_251, (funcp)execute_322, (funcp)execute_323, (funcp)execute_327, (funcp)execute_342, (funcp)execute_346, (funcp)execute_350, (funcp)execute_354, (funcp)execute_356, (funcp)execute_359, (funcp)execute_362, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_391, (funcp)execute_395, (funcp)execute_400, (funcp)execute_402, (funcp)execute_403, (funcp)execute_404, (funcp)execute_405, (funcp)execute_406, (funcp)execute_410, (funcp)execute_415, (funcp)execute_419, (funcp)execute_424, (funcp)execute_427, (funcp)execute_429, (funcp)execute_434, (funcp)execute_437, (funcp)execute_439, (funcp)execute_444, (funcp)execute_469, (funcp)execute_472, (funcp)execute_476, (funcp)execute_481, (funcp)execute_486, (funcp)execute_491, (funcp)execute_496, (funcp)execute_499, (funcp)execute_504, (funcp)execute_512, (funcp)execute_517, (funcp)execute_518, (funcp)execute_521, (funcp)execute_525, (funcp)execute_655, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_37, (funcp)transaction_39, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_67, (funcp)transaction_76, (funcp)transaction_83, (funcp)transaction_90, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_107, (funcp)transaction_109, (funcp)transaction_110, (funcp)transaction_111, (funcp)transaction_144, (funcp)transaction_147, (funcp)transaction_151, (funcp)transaction_158, (funcp)transaction_165, (funcp)transaction_172, (funcp)transaction_178, (funcp)transaction_181, (funcp)transaction_212, (funcp)transaction_215, (funcp)transaction_219, (funcp)transaction_226, (funcp)transaction_233, (funcp)transaction_240, (funcp)transaction_246, (funcp)transaction_249, (funcp)transaction_284, (funcp)transaction_287, (funcp)transaction_291, (funcp)transaction_298, (funcp)transaction_305, (funcp)transaction_312, (funcp)transaction_318, (funcp)transaction_321, (funcp)transaction_364, (funcp)transaction_367, (funcp)transaction_371, (funcp)transaction_378, (funcp)transaction_385, (funcp)transaction_392, (funcp)transaction_398, (funcp)transaction_401, (funcp)transaction_418, (funcp)transaction_425, (funcp)transaction_432, (funcp)transaction_439, (funcp)transaction_446, (funcp)transaction_453, (funcp)transaction_478, (funcp)transaction_485, (funcp)transaction_492, (funcp)transaction_499, (funcp)transaction_506, (funcp)transaction_605, (funcp)transaction_608, (funcp)transaction_611, (funcp)transaction_614, (funcp)transaction_618, (funcp)transaction_625, (funcp)transaction_632, (funcp)transaction_639, (funcp)transaction_646, (funcp)transaction_653, (funcp)transaction_660, (funcp)transaction_667, (funcp)transaction_674, (funcp)transaction_681, (funcp)transaction_688, (funcp)transaction_695, (funcp)transaction_702, (funcp)transaction_709, (funcp)transaction_716, (funcp)transaction_723, (funcp)transaction_730, (funcp)transaction_737, (funcp)transaction_744, (funcp)transaction_751, (funcp)transaction_758, (funcp)transaction_765, (funcp)transaction_772, (funcp)transaction_779, (funcp)transaction_786, (funcp)transaction_793, (funcp)transaction_800, (funcp)transaction_807, (funcp)transaction_814, (funcp)transaction_821, (funcp)transaction_828, (funcp)transaction_835, (funcp)transaction_842, (funcp)transaction_849, (funcp)transaction_856, (funcp)transaction_863};
const int NumRelocateId= 187;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Skinny_tb_func_impl/xsim.reloc",  (void **)funcTab, 187);
	iki_vhdl_file_variable_register(dp + 177272);
	iki_vhdl_file_variable_register(dp + 177328);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Skinny_tb_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Skinny_tb_func_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/Skinny_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Skinny_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Skinny_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
