/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *WORK_P_3649664029;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_3649664029_init();
    ieee_p_1242562249_init();
    work_a_0873426948_3990940387_init();
    work_a_3853510154_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1640669797_1181938964_init();
    work_a_3616213216_3212880686_init();
    work_a_1600815965_3212880686_init();


    xsi_register_tops("work_a_1600815965_3212880686");

    WORK_P_3649664029 = xsi_get_engine_memory("work_p_3649664029");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
