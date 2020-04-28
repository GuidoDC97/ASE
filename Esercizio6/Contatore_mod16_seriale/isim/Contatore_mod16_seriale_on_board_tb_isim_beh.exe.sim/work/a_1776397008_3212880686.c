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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio6/Contatore_mod16_seriale/cathodes_manager.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_1776397008_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    static char *nl0[] = {&&LAB5, &&LAB5, &&LAB3, &&LAB4, &&LAB5, &&LAB5, &&LAB5, &&LAB5, &&LAB5};

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5568);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = (7 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t9 = (t0 + 5680);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = (7 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t4 = (t0 + 5680);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB5:    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t4 = (t0 + 5680);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

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

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 11912);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB20:    t5 = (t0 + 11916);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB21:    t8 = (t0 + 11920);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB22:    t11 = (t0 + 11924);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB23:    t14 = (t0 + 11928);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB24:    t17 = (t0 + 11932);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB25:    t20 = (t0 + 11936);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB26:    t23 = (t0 + 11940);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB27:    t26 = (t0 + 11944);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB28:    t29 = (t0 + 11948);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB12;

LAB29:    t32 = (t0 + 11952);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB13;

LAB30:    t35 = (t0 + 11956);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB14;

LAB31:    t38 = (t0 + 11960);
    t40 = xsi_mem_cmp(t38, t2, 4U);
    if (t40 == 1)
        goto LAB15;

LAB32:    t41 = (t0 + 11964);
    t43 = xsi_mem_cmp(t41, t2, 4U);
    if (t43 == 1)
        goto LAB16;

LAB33:    t44 = (t0 + 11968);
    t46 = xsi_mem_cmp(t44, t2, 4U);
    if (t46 == 1)
        goto LAB17;

LAB34:    t47 = (t0 + 11972);
    t49 = xsi_mem_cmp(t47, t2, 4U);
    if (t49 == 1)
        goto LAB18;

LAB35:
LAB19:    xsi_set_current_line(91, ng0);
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
LAB3:    xsi_set_current_line(59, ng0);
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

LAB4:    xsi_set_current_line(61, ng0);
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

LAB6:    xsi_set_current_line(65, ng0);
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

LAB7:    xsi_set_current_line(67, ng0);
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

LAB8:    xsi_set_current_line(69, ng0);
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

LAB9:    xsi_set_current_line(71, ng0);
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

LAB10:    xsi_set_current_line(73, ng0);
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

LAB11:    xsi_set_current_line(75, ng0);
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

LAB12:    xsi_set_current_line(77, ng0);
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

LAB13:    xsi_set_current_line(79, ng0);
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

LAB14:    xsi_set_current_line(81, ng0);
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

LAB15:    xsi_set_current_line(83, ng0);
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

LAB16:    xsi_set_current_line(85, ng0);
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

LAB17:    xsi_set_current_line(87, ng0);
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

LAB18:    xsi_set_current_line(89, ng0);
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
    char t4[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, (unsigned char)2);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 11740U);
    t2 = xsi_base_array_concat(t2, t4, t5, (char)99, t1, (char)97, t3, t6, (char)101);
    t7 = (1U + 7U);
    t8 = (8U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5808);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 5600);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t7, 0);
    goto LAB6;

}


extern void work_a_1776397008_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1776397008_3212880686_p_0,(void *)work_a_1776397008_3212880686_p_1,(void *)work_a_1776397008_3212880686_p_2};
	xsi_register_didat("work_a_1776397008_3212880686", "isim/Contatore_mod16_seriale_on_board_tb_isim_beh.exe.sim/work/a_1776397008_3212880686.didat");
	xsi_register_executes(pe);
}
