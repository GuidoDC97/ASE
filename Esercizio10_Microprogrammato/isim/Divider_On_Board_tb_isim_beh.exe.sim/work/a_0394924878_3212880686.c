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
static const char *ng0 = "C:/Users/Guido Di Chiara/Desktop/Esercizio10/Anodes_manager.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_0394924878_3212880686_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char t6[16];
    char t9[16];
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 5056U);
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t2, t4, t3);
    t7 = (t0 + 5086);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t6, t7, t9);
    t14 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t1, t5, t2, t11, t6);
    t15 = (t1 + 12U);
    t13 = *((unsigned int *)t15);
    t16 = (1U * t13);
    t17 = (4U != t16);
    if (t17 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 3176);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 4U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t23 = (t0 + 3080);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t16, 0);
    goto LAB6;

}

static void work_a_0394924878_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5090);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 5092);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 5094);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 5096);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 3240);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 3096);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t14 = (t0 + 5098);
    t16 = (t0 + 3240);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 4U);
    xsi_driver_first_trans_fast(t16);
    goto LAB2;

LAB4:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5102);
    t3 = (t0 + 3240);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5106);
    t3 = (t0 + 3240);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5110);
    t3 = (t0 + 3240);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB12:;
}


extern void work_a_0394924878_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0394924878_3212880686_p_0,(void *)work_a_0394924878_3212880686_p_1};
	xsi_register_didat("work_a_0394924878_3212880686", "isim/Divider_On_Board_tb_isim_beh.exe.sim/work/a_0394924878_3212880686.didat");
	xsi_register_executes(pe);
}
