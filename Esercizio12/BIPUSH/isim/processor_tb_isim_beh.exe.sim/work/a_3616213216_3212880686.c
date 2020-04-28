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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio12/BIPUSH/dp_ar_ram.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3616213216_3212880686_p_0(char *t0)
{
    char t10[16];
    char t12[16];
    char t17[16];
    char *t1;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (t0 + 27816);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    if (31 > 0)
        goto LAB5;

LAB6:    if (-1 == -1)
        goto LAB10;

LAB11:    t5 = 0;

LAB7:    t6 = (31 - t5);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 1;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (1 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t17 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 31;
    t18 = (t14 + 4U);
    *((int *)t18) = 2;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t19 = (2 - 31);
    t16 = (t19 * -1);
    t16 = (t16 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t1, t12, (char)97, t3, t17, (char)101);
    t16 = (2U + 30U);
    t20 = (32U != t16);
    if (t20 == 1)
        goto LAB12;

LAB13:    t18 = (t0 + 6256);
    t21 = (t18 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t9, 32U);
    xsi_driver_first_trans_fast(t18);

LAB2:    t25 = (t0 + 6080);
    *((int *)t25) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    if (-1 == 1)
        goto LAB8;

LAB9:    t5 = 31;
    goto LAB7;

LAB8:    t5 = 0;
    goto LAB7;

LAB10:    t5 = 31;
    goto LAB7;

LAB12:    xsi_size_not_matching(32U, t16, 0);
    goto LAB13;

}

static void work_a_3616213216_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 1680U);
    t3 = *((char **)t1);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t3);
    t5 = (t0 + 6320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t4;
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 6096);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3616213216_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 2800U);
    t3 = *((char **)t1);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t3);
    t5 = (t0 + 6384);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t4;
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 6112);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3616213216_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6128);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(84, ng0);
    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t3 = (t0 + 2472U);
    t8 = *((char **)t3);
    t9 = *((int *)t8);
    t10 = (t9 - 511);
    t11 = (t10 * -1);
    t12 = (32U * t11);
    t13 = (0U + t12);
    t3 = (t0 + 6448);
    t14 = (t3 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 32U);
    xsi_driver_first_trans_delta(t3, t13, 32U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 2632U);
    t7 = *((char **)t1);
    t9 = *((int *)t7);
    t10 = (t9 - 511);
    t11 = (t10 * -1);
    t12 = (32U * t11);
    t13 = (0U + t12);
    t1 = (t0 + 6448);
    t8 = (t1 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_delta(t1, t13, 32U, 0LL);
    goto LAB6;

}

static void work_a_3616213216_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 511);
    t6 = (t5 * -1);
    xsi_vhdl_check_range_of_index(511, 0, -1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = (t0 + 6512);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 6144);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3616213216_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 511);
    t6 = (t5 * -1);
    xsi_vhdl_check_range_of_index(511, 0, -1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = (t0 + 6576);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 6160);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3616213216_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    t1 = (t0 + 5760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = (31 - 1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 27818);
    t9 = xsi_mem_cmp(t7, t2, 2U);
    if (t9 == 1)
        goto LAB5;

LAB10:    t10 = (t0 + 27820);
    t12 = xsi_mem_cmp(t10, t2, 2U);
    if (t12 == 1)
        goto LAB6;

LAB11:    t13 = (t0 + 27822);
    t15 = xsi_mem_cmp(t13, t2, 2U);
    if (t15 == 1)
        goto LAB7;

LAB12:    t16 = (t0 + 27824);
    t18 = xsi_mem_cmp(t16, t2, 2U);
    if (t18 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(95, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t3 = t2;
    memset(t3, (unsigned char)2, 8U);
    t7 = (t0 + 6640);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB4:    xsi_set_current_line(94, ng0);

LAB17:    t2 = (t0 + 6176);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(95, ng0);
    t19 = (t0 + 2952U);
    t20 = *((char **)t19);
    t21 = (31 - 7);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t19 = (t20 + t23);
    t24 = (t0 + 6640);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t19, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB4;

LAB6:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (31 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 6640);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (31 - 23);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 6640);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 6640);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 6176);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}


extern void work_a_3616213216_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3616213216_3212880686_p_0,(void *)work_a_3616213216_3212880686_p_1,(void *)work_a_3616213216_3212880686_p_2,(void *)work_a_3616213216_3212880686_p_3,(void *)work_a_3616213216_3212880686_p_4,(void *)work_a_3616213216_3212880686_p_5,(void *)work_a_3616213216_3212880686_p_6};
	xsi_register_didat("work_a_3616213216_3212880686", "isim/processor_tb_isim_beh.exe.sim/work/a_3616213216_3212880686.didat");
	xsi_register_executes(pe);
}
