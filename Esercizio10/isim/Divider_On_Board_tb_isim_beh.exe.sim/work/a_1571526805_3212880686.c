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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio10/Debouncer.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1571526805_3212880686_p_0(char *t0)
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
    int t23;
    int t24;
    unsigned char t25;
    unsigned char t26;

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
LAB3:    t1 = (t0 + 5040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(65, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t5 = t1;
    memset(t5, (unsigned char)2, 7U);
    t6 = (t0 + 5136);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 7U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 5200);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB12;

LAB13:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB17;

LAB18:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 9648);
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
    t14 = (t0 + 9568U);
    t7 = xsi_base_array_concat(t7, t12, t9, (char)97, t2, t13, (char)97, t8, t14, (char)101);
    t16 = (3U + 4U);
    t17 = (7U != t16);
    if (t17 == 1)
        goto LAB10;

LAB11:    t18 = (t0 + 5136);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 7U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;
    goto LAB8;

LAB10:    xsi_size_not_matching(7U, t16, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 9568U);
    t6 = (t0 + 3368U);
    t7 = *((char **)t6);
    t15 = *((int *)t7);
    t23 = (4 - 1);
    t24 = (0 - t23);
    t16 = (t24 * -1);
    t16 = (t16 + 1);
    t6 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t12, t15, ((t16)));
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t6, t12);
    if (t11 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5200);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB8;

LAB14:    xsi_set_current_line(77, ng0);
    t8 = (t0 + 5392);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t18 = *((char **)t14);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB15;

LAB17:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2952U);
    t6 = *((char **)t1);
    t25 = *((unsigned char *)t6);
    t26 = (t25 == (unsigned char)2);
    if (t26 != 0)
        goto LAB22;

LAB24:
LAB23:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB19:    t1 = (t0 + 3488U);
    t5 = *((char **)t1);
    t15 = *((int *)t5);
    t17 = (t15 == 1);
    t3 = t17;
    goto LAB21;

LAB22:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 5456);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB23;

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

LAB0:    xsi_set_current_line(98, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5520);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5056);
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
