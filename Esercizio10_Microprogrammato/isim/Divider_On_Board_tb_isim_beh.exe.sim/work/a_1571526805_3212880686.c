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
static const char *ng0 = "C:/Users/Guido Di Chiara/Desktop/Esercizio10/Debouncer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1571526805_3212880686_p_0(char *t0)
{
    char t15[16];
    char t16[16];
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
    unsigned char t12;
    int t13;
    unsigned char t14;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(35, ng0);
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
LAB3:    t1 = (t0 + 5200);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(36, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t5 = t1;
    memset(t5, (unsigned char)2, 7U);
    t6 = (t0 + 5296);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 5424);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 5488);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 5552);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB17;

LAB18:    t3 = (unsigned char)0;

LAB19:    if (t3 != 0)
        goto LAB15;

LAB16:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB22;

LAB23:    t3 = (unsigned char)0;

LAB24:    if (t3 != 0)
        goto LAB20;

LAB21:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5424);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5488);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5680);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 8604);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = ((IEEE_P_2592010699) + 4024);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 2;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (2 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = (t0 + 8504U);
    t8 = xsi_base_array_concat(t8, t15, t10, (char)97, t2, t16, (char)97, t9, t18, (char)101);
    t20 = (3U + 4U);
    t21 = (7U != t20);
    if (t21 == 1)
        goto LAB13;

LAB14:    t22 = (t0 + 5296);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t8, 7U);
    xsi_driver_first_trans_fast_port(t22);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 5424);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;
    goto LAB8;

LAB10:    t2 = (t0 + 3648U);
    t6 = *((char **)t2);
    t13 = *((int *)t6);
    t14 = (t13 == 0);
    t4 = t14;
    goto LAB12;

LAB13:    xsi_size_not_matching(7U, t20, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t1 = (t0 + 5360);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5616);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5488);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 2;
    goto LAB8;

LAB17:    t1 = (t0 + 3648U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t12 = (t13 == 1);
    t3 = t12;
    goto LAB19;

LAB20:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3112U);
    t6 = *((char **)t1);
    t1 = (t0 + 8552U);
    t7 = (t0 + 3528U);
    t8 = *((char **)t7);
    t19 = *((int *)t8);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, t19, 4);
    t14 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t1, t7, t15);
    if (t14 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5680);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5552);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB26:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5424);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5488);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB8;

LAB22:    t1 = (t0 + 3648U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t12 = (t13 == 2);
    t3 = t12;
    goto LAB24;

LAB25:    xsi_set_current_line(54, ng0);
    t9 = (t0 + 5552);
    t10 = (t9 + 56U);
    t17 = *((char **)t10);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    goto LAB26;

}

static void work_a_1571526805_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5744);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5216);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1571526805_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1571526805_3212880686_p_0,(void *)work_a_1571526805_3212880686_p_1};
	xsi_register_didat("work_a_1571526805_3212880686", "isim/Divider_On_Board_tb_isim_beh.exe.sim/work/a_1571526805_3212880686.didat");
	xsi_register_executes(pe);
}
