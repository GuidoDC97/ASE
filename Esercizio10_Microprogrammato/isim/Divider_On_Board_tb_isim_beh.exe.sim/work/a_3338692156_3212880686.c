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
static const char *ng0 = "C:/Users/Guido Di Chiara/Desktop/Esercizio10/Counter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3338692156_3212880686_p_0(char *t0)
{
    char t13[16];
    char t17[16];
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
    char *t12;
    int t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    xsi_set_current_line(27, ng0);
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
LAB3:    t1 = (t0 + 3552);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t5 = t1;
    memset(t5, (unsigned char)2, 3U);
    t6 = (t0 + 3632);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 3696);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB11:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(32, ng0);
    t2 = xsi_get_transient_memory(3U);
    memset(t2, 0, 3U);
    t6 = t2;
    memset(t6, (unsigned char)2, 3U);
    t7 = (t0 + 3632);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB8;

LAB10:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 5720U);
    t14 = (4 - 1);
    t6 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t13, t14, 3);
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t6, t13);
    if (t11 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5720U);
    t5 = (t0 + 5759);
    t7 = (t17 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (0 - 0);
    t18 = (t14 * 1);
    t18 = (t18 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t18;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t17);
    t9 = (t13 + 12U);
    t18 = *((unsigned int *)t9);
    t19 = (1U * t18);
    t3 = (3U != t19);
    if (t3 == 1)
        goto LAB15;

LAB16:    t10 = (t0 + 3632);
    t12 = (t10 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t8, 3U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 3696);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB13:    goto LAB8;

LAB12:    xsi_set_current_line(35, ng0);
    t7 = xsi_get_transient_memory(3U);
    memset(t7, 0, 3U);
    t8 = t7;
    memset(t8, (unsigned char)2, 3U);
    t9 = (t0 + 3632);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 3696);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB13;

LAB15:    xsi_size_not_matching(3U, t19, 0);
    goto LAB16;

}


extern void work_a_3338692156_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3338692156_3212880686_p_0};
	xsi_register_didat("work_a_3338692156_3212880686", "isim/Divider_On_Board_tb_isim_beh.exe.sim/work/a_3338692156_3212880686.didat");
	xsi_register_executes(pe);
}
