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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio2/cathodes_manager.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


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

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 10135);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB20:    t5 = (t0 + 10139);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB21:    t8 = (t0 + 10143);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB22:    t11 = (t0 + 10147);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB23:    t14 = (t0 + 10151);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB24:    t17 = (t0 + 10155);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB25:    t20 = (t0 + 10159);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB26:    t23 = (t0 + 10163);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB27:    t26 = (t0 + 10167);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB28:    t29 = (t0 + 10171);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB12;

LAB29:    t32 = (t0 + 10175);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB13;

LAB30:    t35 = (t0 + 10179);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB14;

LAB31:    t38 = (t0 + 10183);
    t40 = xsi_mem_cmp(t38, t2, 4U);
    if (t40 == 1)
        goto LAB15;

LAB32:    t41 = (t0 + 10187);
    t43 = xsi_mem_cmp(t41, t2, 4U);
    if (t43 == 1)
        goto LAB16;

LAB33:    t44 = (t0 + 10191);
    t46 = xsi_mem_cmp(t44, t2, 4U);
    if (t46 == 1)
        goto LAB17;

LAB34:    t47 = (t0 + 10195);
    t49 = xsi_mem_cmp(t47, t2, 4U);
    if (t49 == 1)
        goto LAB18;

LAB35:
LAB19:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t3 = (t0 + 5096);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 5000);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(37, ng0);
    t50 = (t0 + 1648U);
    t51 = *((char **)t50);
    t50 = (t0 + 5096);
    t52 = (t50 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memcpy(t55, t51, 7U);
    xsi_driver_first_trans_fast(t50);
    goto LAB2;

LAB4:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2488U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB13:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB14:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2968U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB15:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3088U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB16:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3208U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB17:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB18:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    t1 = (t0 + 5096);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB36:;
}

static void work_a_1776397008_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, (unsigned char)2);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 9988U);
    t2 = xsi_base_array_concat(t2, t4, t5, (char)99, t1, (char)97, t3, t6, (char)101);
    t7 = (1U + 7U);
    t8 = (8U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5160);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 5016);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t7, 0);
    goto LAB6;

}


extern void work_a_1776397008_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1776397008_3212880686_p_0,(void *)work_a_1776397008_3212880686_p_1};
	xsi_register_didat("work_a_1776397008_3212880686", "isim/display_on_board_isim_beh.exe.sim/work/a_1776397008_3212880686.didat");
	xsi_register_executes(pe);
}
