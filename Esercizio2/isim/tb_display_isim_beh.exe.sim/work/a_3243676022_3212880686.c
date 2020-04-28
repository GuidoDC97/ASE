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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/fabio/Desktop/Elaborato/Esercizio2/anodes_manager.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_3243676022_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t2 = (t0 + 4336);
    t4 = (t0 + 4292U);
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t2, t4);
    t6 = (t1 + 12U);
    t7 = *((unsigned int *)t6);
    t8 = (1U * t7);
    t9 = (4U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 2696);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t8, 0);
    goto LAB6;

}


extern void work_a_3243676022_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3243676022_3212880686_p_0};
	xsi_register_didat("work_a_3243676022_3212880686", "isim/tb_display_isim_beh.exe.sim/work/a_3243676022_3212880686.didat");
	xsi_register_executes(pe);
}
