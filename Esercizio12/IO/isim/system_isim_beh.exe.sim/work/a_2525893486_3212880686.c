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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio12/IO/pwm.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);


static void work_a_2525893486_3212880686_p_0(char *t0)
{
    char t20[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t21;
    unsigned int t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;

LAB0:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5992);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t21 = (0 - 31);
    t17 = (t21 * -1);
    t18 = (1U * t17);
    t23 = (2 - 3);
    t19 = (t23 * -1);
    t22 = (32U * t19);
    t25 = (0 + t22);
    t26 = (t25 + t18);
    t2 = (t4 + t26);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6408);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(77, ng0);
    t4 = xsi_get_transient_memory(32U);
    memset(t4, 0, 32U);
    t11 = t4;
    memset(t11, (unsigned char)2, 32U);
    t12 = (t0 + 6152);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_delta(t12, 96U, 32U, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 6152);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_delta(t5, 64U, 32U, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 6152);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_delta(t5, 32U, 32U, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(81, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)2, 32U);
    t5 = (t0 + 6280);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6344);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t4 = t2;
    memset(t4, (unsigned char)2, 4U);
    t5 = (t0 + 6408);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB9;

LAB11:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 1512U);
    t8 = *((char **)t2);
    t17 = (3 - 3);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t8 + t19);
    t11 = (t20 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 3;
    t12 = (t11 + 4U);
    *((int *)t12) = 2;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t21 = (2 - 3);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t22;
    t23 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t20);
    t24 = (t23 - 3);
    t22 = (t24 * -1);
    t25 = (32U * t22);
    t26 = (0U + t25);
    t12 = (t0 + 6152);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 32U);
    xsi_driver_first_trans_delta(t12, t26, 32U, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(91, ng0);
    t5 = (t0 + 3112U);
    t8 = *((char **)t5);
    t5 = (t0 + 6216);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 6280);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 6344);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);
    goto LAB15;

}

static void work_a_2525893486_3212880686_p_1(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 11572U);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t5 = (1 - 3);
    t6 = (t5 * -1);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = (t0 + 11652U);
    t10 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t3, t9);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t19 = (t0 + 2472U);
    t20 = *((char **)t19);
    t19 = (t0 + 11572U);
    t21 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t18, t20, t19, 1);
    t22 = (t18 + 12U);
    t23 = *((unsigned int *)t22);
    t24 = (1U * t23);
    t25 = (32U != t24);
    if (t25 == 1)
        goto LAB7;

LAB8:    t26 = (t0 + 6472);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t21, 32U);
    xsi_driver_first_trans_fast(t26);

LAB2:    t31 = (t0 + 6008);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t11 = xsi_get_transient_memory(32U);
    memset(t11, 0, 32U);
    t12 = t11;
    memset(t12, (unsigned char)2, 32U);
    t13 = (t0 + 6472);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(32U, t24, 0);
    goto LAB8;

}

static void work_a_2525893486_3212880686_p_2(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 11572U);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t5 = (1 - 3);
    t6 = (t5 * -1);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = (t0 + 11652U);
    t10 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t3, t9);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t19 = (t0 + 2312U);
    t20 = *((char **)t19);
    t19 = (t0 + 11556U);
    t21 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t18, t20, t19, 1);
    t22 = (t18 + 12U);
    t23 = *((unsigned int *)t22);
    t24 = (1U * t23);
    t25 = (32U != t24);
    if (t25 == 1)
        goto LAB7;

LAB8:    t26 = (t0 + 6536);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t21, 32U);
    xsi_driver_first_trans_fast(t26);

LAB2:    t31 = (t0 + 6024);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t11 = xsi_get_transient_memory(32U);
    memset(t11, 0, 32U);
    t12 = t11;
    memset(t12, (unsigned char)2, 32U);
    t13 = (t0 + 6536);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(32U, t24, 0);
    goto LAB8;

}

static void work_a_2525893486_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 11556U);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t6 = (0 - 3);
    t7 = (t6 * -1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t4 = (t5 + t9);
    t10 = (t0 + 11636U);
    t11 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t3, t2, t4, t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 2152U);
    t13 = *((char **)t12);
    t14 = (0 - 3);
    t15 = (t14 * -1);
    t16 = (32U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = xsi_get_transient_memory(32U);
    memset(t18, 0, 32U);
    t19 = t18;
    if (-1 == -1)
        goto LAB8;

LAB9:    t20 = 0;

LAB10:    t21 = (t20 - 31);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (t19 + t23);
    t25 = (0 - 31);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t27 = (1U * t26);
    memset(t24, (unsigned char)2, t27);
    t28 = 1;
    if (32U == 32U)
        goto LAB11;

LAB12:    t28 = 0;

LAB13:    t1 = t28;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB17:    t37 = (t0 + 6600);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    *((unsigned char *)t41) = (unsigned char)2;
    xsi_driver_first_trans_fast(t37);

LAB2:    t42 = (t0 + 6040);
    *((int *)t42) = 1;

LAB1:    return;
LAB3:    t32 = (t0 + 6600);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    *((unsigned char *)t36) = (unsigned char)3;
    xsi_driver_first_trans_fast(t32);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t20 = 31;
    goto LAB10;

LAB11:    t29 = 0;

LAB14:    if (t29 < 32U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t30 = (t12 + t29);
    t31 = (t18 + t29);
    if (*((unsigned char *)t30) != *((unsigned char *)t31))
        goto LAB12;

LAB16:    t29 = (t29 + 1);
    goto LAB14;

LAB18:    goto LAB2;

}

static void work_a_2525893486_3212880686_p_4(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t4 = (3 - 3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 3;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t12 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t1, t7);
    t13 = (t12 - 3);
    t11 = (t13 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, t12);
    t14 = (32U * t11);
    t15 = (0 + t14);
    t9 = (t2 + t15);
    t16 = (t0 + 6664);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 32U);
    xsi_driver_first_trans_fast_port(t16);

LAB2:    t21 = (t0 + 6056);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2525893486_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6728);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6072);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2525893486_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2525893486_3212880686_p_0,(void *)work_a_2525893486_3212880686_p_1,(void *)work_a_2525893486_3212880686_p_2,(void *)work_a_2525893486_3212880686_p_3,(void *)work_a_2525893486_3212880686_p_4,(void *)work_a_2525893486_3212880686_p_5};
	xsi_register_didat("work_a_2525893486_3212880686", "isim/system_isim_beh.exe.sim/work/a_2525893486_3212880686.didat");
	xsi_register_executes(pe);
}
