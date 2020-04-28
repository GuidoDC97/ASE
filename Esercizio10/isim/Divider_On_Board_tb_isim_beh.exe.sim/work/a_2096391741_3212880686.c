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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio10/ControlUnit.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2096391741_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4936);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    t2 = (t0 + 2952U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)0);
    t4 = t12;
    goto LAB12;

}

static void work_a_2096391741_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8};

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 5064);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5128);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5256);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 5320);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5384);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4856);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 5448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 5384);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5128);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5192);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = (1 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t6 = *((unsigned char *)t1);
    t13 = (t6 == (unsigned char)2);
    if (t13 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = (1 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t6 = *((unsigned char *)t1);
    t13 = (t6 == (unsigned char)3);
    if (t13 != 0)
        goto LAB12;

LAB13:
LAB10:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = (1 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t6 = *((unsigned char *)t1);
    t13 = (t6 == (unsigned char)3);
    if (t13 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 5000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 5064);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t13 = (t6 == (unsigned char)2);
    if (t13 != 0)
        goto LAB17;

LAB19:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t13 = (t6 == (unsigned char)3);
    if (t13 != 0)
        goto LAB20;

LAB21:
LAB18:    goto LAB2;

LAB7:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = (0 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t6 = *((unsigned char *)t1);
    t13 = (t6 == (unsigned char)2);
    if (t13 != 0)
        goto LAB22;

LAB24:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = (0 - 1);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t6 = *((unsigned char *)t1);
    t13 = (t6 == (unsigned char)3);
    if (t13 != 0)
        goto LAB25;

LAB26:
LAB23:    goto LAB2;

LAB8:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 5320);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(128, ng0);
    t1 = (t0 + 5000);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 5256);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 5448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(98, ng0);
    t3 = (t0 + 5320);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB10;

LAB12:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 5320);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB10;

LAB14:    xsi_set_current_line(106, ng0);
    t3 = (t0 + 5320);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB15;

LAB17:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 5448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 5448);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB22:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 5256);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 5448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB25:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 5320);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 5448);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

}


extern void work_a_2096391741_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2096391741_3212880686_p_0,(void *)work_a_2096391741_3212880686_p_1};
	xsi_register_didat("work_a_2096391741_3212880686", "isim/Divider_On_Board_tb_isim_beh.exe.sim/work/a_2096391741_3212880686.didat");
	xsi_register_executes(pe);
}
