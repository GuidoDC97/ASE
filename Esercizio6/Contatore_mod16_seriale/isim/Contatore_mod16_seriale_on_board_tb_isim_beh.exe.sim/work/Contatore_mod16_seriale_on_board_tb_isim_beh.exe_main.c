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

char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0436029369_3212880686_init();
    work_a_1776397008_3212880686_init();
    work_a_0394924878_3212880686_init();
    work_a_3146720079_1181938964_init();
    work_a_1420883715_3212880686_init();
    work_a_1473390551_3212880686_init();
    work_a_3876692805_3212880686_init();
    work_a_3977818774_1181938964_init();
    work_a_1226011458_3212880686_init();
    work_a_1874407925_1181938964_init();
    work_a_0060262478_2372691052_init();


    xsi_register_tops("work_a_0060262478_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
