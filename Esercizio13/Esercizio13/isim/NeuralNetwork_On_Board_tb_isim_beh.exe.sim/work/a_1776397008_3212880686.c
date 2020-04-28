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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio13/Esercizio13/cathodes_manager.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_1776397008_3212880686_p_0(char *t0)
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
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 11689);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 11691);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 11693);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 11695);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 5680);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 5568);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(46, ng0);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t16 = (15 - 3);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t14 = (t15 + t18);
    t19 = (t0 + 5680);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t14, 4U);
    xsi_driver_first_trans_fast(t19);
    goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t16 = (15 - 7);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 5680);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t16 = (15 - 11);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 5680);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t16 = (15 - 15);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = (t0 + 5680);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB12:;
}

static void work_a_1776397008_3212880686_p_1(char *t0)
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
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 11697);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB20:    t5 = (t0 + 11701);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB21:    t8 = (t0 + 11705);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB22:    t11 = (t0 + 11709);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB23:    t14 = (t0 + 11713);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB24:    t17 = (t0 + 11717);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB25:    t20 = (t0 + 11721);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB26:    t23 = (t0 + 11725);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB27:    t26 = (t0 + 11729);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB28:    t29 = (t0 + 11733);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB12;

LAB29:    t32 = (t0 + 11737);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB13;

LAB30:    t35 = (t0 + 11741);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB14;

LAB31:    t38 = (t0 + 11745);
    t40 = xsi_mem_cmp(t38, t2, 4U);
    if (t40 == 1)
        goto LAB15;

LAB32:    t41 = (t0 + 11749);
    t43 = xsi_mem_cmp(t41, t2, 4U);
    if (t43 == 1)
        goto LAB16;

LAB33:    t44 = (t0 + 11753);
    t46 = xsi_mem_cmp(t44, t2, 4U);
    if (t46 == 1)
        goto LAB17;

LAB34:    t47 = (t0 + 11757);
    t49 = xsi_mem_cmp(t47, t2, 4U);
    if (t49 == 1)
        goto LAB18;

LAB35:
LAB19:    xsi_set_current_line(77, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t3 = (t0 + 5744);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 5584);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(61, ng0);
    t50 = (t0 + 1968U);
    t51 = *((char **)t50);
    t50 = (t0 + 5744);
    t52 = (t50 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memcpy(t55, t51, 7U);
    xsi_driver_first_trans_fast(t50);
    goto LAB2;

LAB4:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB13:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB14:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3288U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB15:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3408U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB16:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3528U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB17:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB18:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB36:;
}

static void work_a_1776397008_3212880686_p_2(char *t0)
{
    char t1[16];
    char t4[16];
    char t11[16];
    char *t2;
    char *t5;
    char *t6;
    int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(81, ng0);

LAB3:    t2 = (t0 + 11761);
    t5 = (t4 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t7 = (0 - 0);
    t8 = (t7 * 1);
    t8 = (t8 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t8;
    t6 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t2, t4);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t0 + 11508U);
    t9 = xsi_base_array_concat(t9, t11, t12, (char)97, t6, t1, (char)97, t10, t13, (char)101);
    t14 = (t1 + 12U);
    t8 = *((unsigned int *)t14);
    t15 = (1U * t8);
    t16 = (t15 + 7U);
    t17 = (8U != t16);
    if (t17 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 5808);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t9, 8U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t23 = (t0 + 5600);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t16, 0);
    goto LAB6;

}


extern void work_a_1776397008_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1776397008_3212880686_p_0,(void *)work_a_1776397008_3212880686_p_1,(void *)work_a_1776397008_3212880686_p_2};
	xsi_register_didat("work_a_1776397008_3212880686", "isim/NeuralNetwork_On_Board_tb_isim_beh.exe.sim/work/a_1776397008_3212880686.didat");
	xsi_register_executes(pe);
}
