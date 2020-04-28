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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio13/Esercizio13/Adder.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_278355757_3536714472(char *, char *, char *, char *, char *, char *);


static void work_a_3841309559_3990940387_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6804U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 6820U);
    t6 = ieee_p_3499444699_sub_278355757_3536714472(IEEE_P_3499444699, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 3880);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3768);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t9, 0);
    goto LAB6;

}

static void work_a_3841309559_3990940387_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3784);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3841309559_3990940387_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    unsigned char t30;
    unsigned char t31;
    unsigned char t32;
    char *t33;
    char *t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    unsigned char t41;
    char *t42;
    char *t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned char t49;
    unsigned char t50;
    char *t51;
    char *t52;
    int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned char t58;
    unsigned char t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;

LAB0:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = (8 - 1);
    t7 = (t6 - 7);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t4 = (t5 + t10);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t33 = (t0 + 1032U);
    t34 = *((char **)t33);
    t35 = (8 - 1);
    t36 = (t35 - 7);
    t37 = (t36 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t33 = (t34 + t39);
    t40 = *((unsigned char *)t33);
    t41 = (t40 == (unsigned char)3);
    if (t41 == 1)
        goto LAB17;

LAB18:    t32 = (unsigned char)0;

LAB19:    if (t32 == 1)
        goto LAB14;

LAB15:    t31 = (unsigned char)0;

LAB16:    t1 = t31;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB20:    t65 = (t0 + 4008);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    *((unsigned char *)t69) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t65);

LAB2:    t70 = (t0 + 3800);
    *((int *)t70) = 1;

LAB1:    return;
LAB3:    t60 = (t0 + 4008);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    *((unsigned char *)t64) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t60);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t22 = (t0 + 1672U);
    t23 = *((char **)t22);
    t24 = (8 - 1);
    t25 = (t24 - 7);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t22 = (t23 + t28);
    t29 = *((unsigned char *)t22);
    t30 = (t29 == (unsigned char)3);
    t2 = t30;
    goto LAB10;

LAB11:    t13 = (t0 + 1192U);
    t14 = *((char **)t13);
    t15 = (8 - 1);
    t16 = (t15 - 7);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t13 = (t14 + t19);
    t20 = *((unsigned char *)t13);
    t21 = (t20 == (unsigned char)2);
    t3 = t21;
    goto LAB13;

LAB14:    t51 = (t0 + 1672U);
    t52 = *((char **)t51);
    t53 = (8 - 1);
    t54 = (t53 - 7);
    t55 = (t54 * -1);
    t56 = (1U * t55);
    t57 = (0 + t56);
    t51 = (t52 + t57);
    t58 = *((unsigned char *)t51);
    t59 = (t58 == (unsigned char)2);
    t31 = t59;
    goto LAB16;

LAB17:    t42 = (t0 + 1192U);
    t43 = *((char **)t42);
    t44 = (8 - 1);
    t45 = (t44 - 7);
    t46 = (t45 * -1);
    t47 = (1U * t46);
    t48 = (0 + t47);
    t42 = (t43 + t48);
    t49 = *((unsigned char *)t42);
    t50 = (t49 == (unsigned char)3);
    t32 = t50;
    goto LAB19;

LAB21:    goto LAB2;

}


extern void work_a_3841309559_3990940387_init()
{
	static char *pe[] = {(void *)work_a_3841309559_3990940387_p_0,(void *)work_a_3841309559_3990940387_p_1,(void *)work_a_3841309559_3990940387_p_2};
	xsi_register_didat("work_a_3841309559_3990940387", "isim/NeuralNetwork_On_Board_tb_isim_beh.exe.sim/work/a_3841309559_3990940387.didat");
	xsi_register_executes(pe);
}
