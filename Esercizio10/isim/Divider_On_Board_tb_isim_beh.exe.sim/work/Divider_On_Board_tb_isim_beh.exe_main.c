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

char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_4111679920_3212880686_init();
    work_a_2995838061_3212880686_init();
    work_a_3112044328_3990940387_init();
    work_a_4115595424_1181938964_init();
    work_a_0915450948_1181938964_init();
    work_a_3338692156_3212880686_init();
    work_a_0445019829_1181938964_init();
    work_a_2096391741_3212880686_init();
    work_a_2140243057_3212880686_init();
    work_a_1571526805_3212880686_init();
    work_a_2990977671_3212880686_init();
    work_a_1793539635_3212880686_init();
    work_a_1776397008_3212880686_init();
    work_a_0394924878_3212880686_init();
    work_a_3146720079_1181938964_init();
    work_a_1226011458_3212880686_init();
    work_a_2053471294_1181938964_init();
    work_a_1808880843_2372691052_init();


    xsi_register_tops("work_a_1808880843_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
