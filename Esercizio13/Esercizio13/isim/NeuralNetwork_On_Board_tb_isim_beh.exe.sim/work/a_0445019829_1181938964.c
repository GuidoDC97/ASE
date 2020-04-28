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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio13/Esercizio13/Datapath.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_0445019829_1181938964_p_0(char *t0)
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
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(189, ng0);
    t1 = (t0 + 1832U);
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
LAB3:    t1 = (t0 + 6080);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(190, ng0);
    t1 = (t0 + 6176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(192, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t9 = (t4 == (unsigned char)3);
    if (t9 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(193, ng0);
    t2 = (t0 + 4072U);
    t6 = *((char **)t2);
    t10 = (0 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t2 = (t6 + t13);
    t14 = *((unsigned char *)t2);
    t7 = (t0 + 4072U);
    t8 = *((char **)t7);
    t15 = (1 - 3);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t7 = (t8 + t18);
    t19 = *((unsigned char *)t7);
    t20 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t14, t19);
    t21 = (t0 + 4072U);
    t22 = *((char **)t21);
    t23 = (2 - 3);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t21 = (t22 + t26);
    t27 = *((unsigned char *)t21);
    t28 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t20, t27);
    t29 = (t0 + 4072U);
    t30 = *((char **)t29);
    t31 = (3 - 3);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((unsigned char *)t29);
    t36 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t28, t35);
    t37 = (t0 + 6176);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    *((unsigned char *)t41) = t36;
    xsi_driver_first_trans_fast(t37);
    goto LAB8;

}

static void work_a_0445019829_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(198, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6240);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6096);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0445019829_1181938964_init()
{
	static char *pe[] = {(void *)work_a_0445019829_1181938964_p_0,(void *)work_a_0445019829_1181938964_p_1};
	xsi_register_didat("work_a_0445019829_1181938964", "isim/NeuralNetwork_On_Board_tb_isim_beh.exe.sim/work/a_0445019829_1181938964.didat");
	xsi_register_executes(pe);
}
