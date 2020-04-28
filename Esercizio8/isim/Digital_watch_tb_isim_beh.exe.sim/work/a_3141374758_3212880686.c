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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio8/Counter_mod_M_load.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3141374758_3212880686_p_0(char *t0)
{
    char t14[16];
    char t19[16];
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
    int t11;
    int t12;
    unsigned char t13;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 3960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t5 = t1;
    memset(t5, (unsigned char)2, 5U);
    t6 = (t0 + 4056);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4120);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 7356U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t12 = (24 - 1);
    t13 = (t11 > t12);
    if (t13 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4056);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);

LAB8:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 4120);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB7:    xsi_set_current_line(32, ng0);
    t15 = (24 - 1);
    t6 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, t15, 5);
    t7 = (t0 + 4056);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB8;

LAB10:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 7388U);
    t11 = (24 - 1);
    t6 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, t11, 5);
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t6, t14);
    if (t4 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 7388U);
    t5 = (t0 + 7433);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (0 - 0);
    t20 = (t11 * 1);
    t20 = (t20 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t20;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t14, t2, t1, t5, t19);
    t9 = (t14 + 12U);
    t20 = *((unsigned int *)t9);
    t21 = (1U * t20);
    t3 = (5U != t21);
    if (t3 == 1)
        goto LAB15;

LAB16:    t10 = (t0 + 4056);
    t16 = (t10 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    memcpy(t22, t8, 5U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4120);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB13:    goto LAB3;

LAB12:    xsi_set_current_line(39, ng0);
    t7 = xsi_get_transient_memory(5U);
    memset(t7, 0, 5U);
    t8 = t7;
    memset(t8, (unsigned char)2, 5U);
    t9 = (t0 + 4056);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 5U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 4120);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB13;

LAB15:    xsi_size_not_matching(5U, t21, 0);
    goto LAB16;

}

static void work_a_3141374758_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4184);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3976);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3141374758_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3141374758_3212880686_p_0,(void *)work_a_3141374758_3212880686_p_1};
	xsi_register_didat("work_a_3141374758_3212880686", "isim/Digital_watch_tb_isim_beh.exe.sim/work/a_3141374758_3212880686.didat");
	xsi_register_executes(pe);
}
