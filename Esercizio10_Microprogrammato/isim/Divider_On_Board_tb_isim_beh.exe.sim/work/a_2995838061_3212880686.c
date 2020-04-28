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
static const char *ng0 = "C:/Users/Guido Di Chiara/Desktop/Esercizio10/RegisterSAQ.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2995838061_3212880686_p_0(char *t0)
{
    char t12[16];
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t5 = t1;
    memset(t5, (unsigned char)2, 10U);
    t6 = (t0 + 4576);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB3;

LAB7:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 7093);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t13 + 0U);
    t14 = (t10 + 0U);
    *((int *)t14) = 0;
    t14 = (t10 + 4U);
    *((int *)t14) = 2;
    t14 = (t10 + 8U);
    *((int *)t14) = 1;
    t15 = (2 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t10 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t0 + 6988U);
    t7 = xsi_base_array_concat(t7, t12, t9, (char)97, t2, t13, (char)97, t8, t14, (char)101);
    t16 = (3U + 7U);
    t17 = (10U != t16);
    if (t17 == 1)
        goto LAB10;

LAB11:    t18 = (t0 + 4576);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 10U);
    xsi_driver_first_trans_fast(t18);
    goto LAB8;

LAB10:    xsi_size_not_matching(10U, t16, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 4576);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 5U);
    xsi_driver_first_trans_delta(t1, 1U, 5U, 0LL);
    goto LAB13;

LAB15:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t11 = *((unsigned char *)t5);
    t1 = (t0 + 4576);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t11;
    xsi_driver_first_trans_delta(t1, 9U, 1, 0LL);
    goto LAB16;

LAB18:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t15 = (2 * 4);
    t16 = (9 - t15);
    t23 = (t16 * 1U);
    t24 = (0 + t23);
    t1 = (t5 + t24);
    t6 = (t0 + 4576);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 9U);
    xsi_driver_first_trans_delta(t6, 0U, 9U, 0LL);
    goto LAB19;

}

static void work_a_2995838061_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 4640);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4496);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2995838061_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2995838061_3212880686_p_0,(void *)work_a_2995838061_3212880686_p_1};
	xsi_register_didat("work_a_2995838061_3212880686", "isim/Divider_On_Board_tb_isim_beh.exe.sim/work/a_2995838061_3212880686.didat");
	xsi_register_executes(pe);
}
