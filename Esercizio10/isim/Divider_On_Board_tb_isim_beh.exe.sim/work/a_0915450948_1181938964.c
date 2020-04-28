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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio10/Adder_Subtractor_Nbit.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_0915450948_1181938964_p_0(char *t0)
{
    int t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (5 - 1);
    t2 = (t0 + 6512);
    *((int *)t2) = 0;
    t3 = (t0 + 6516);
    *((int *)t3) = t1;
    t4 = 0;
    t5 = t1;

LAB2:    if (t4 <= t5)
        goto LAB3;

LAB5:    t2 = (t0 + 3432);
    *((int *)t2) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(32, ng0);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 6512);
    t8 = *((int *)t6);
    t9 = (t8 - 4);
    t10 = (t9 * -1);
    xsi_vhdl_check_range_of_index(4, 0, -1, *((int *)t6));
    t11 = (1U * t10);
    t12 = (0 + t11);
    t13 = (t7 + t12);
    t14 = *((unsigned char *)t13);
    t15 = (t0 + 1352U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t14, t17);
    t15 = (t0 + 6512);
    t19 = *((int *)t15);
    t20 = (t19 - 4);
    t21 = (t20 * -1);
    t22 = (1 * t21);
    t23 = (0U + t22);
    t24 = (t0 + 3512);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t18;
    xsi_driver_first_trans_delta(t24, t23, 1, 0LL);

LAB4:    t2 = (t0 + 6512);
    t4 = *((int *)t2);
    t3 = (t0 + 6516);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB5;

LAB6:    t1 = (t4 + 1);
    t4 = t1;
    t6 = (t0 + 6512);
    *((int *)t6) = t4;
    goto LAB2;

}


extern void work_a_0915450948_1181938964_init()
{
	static char *pe[] = {(void *)work_a_0915450948_1181938964_p_0};
	xsi_register_didat("work_a_0915450948_1181938964", "isim/Divider_On_Board_tb_isim_beh.exe.sim/work/a_0915450948_1181938964.didat");
	xsi_register_executes(pe);
}
