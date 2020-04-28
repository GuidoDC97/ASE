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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio9/MAC_multiplier_tb.vhd";



static void work_a_0882187345_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t3 = (30 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5368);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5376);
    t5 = (t0 + 2960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(45, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5384);
    t10 = 1;
    if (16U == 16U)
        goto LAB14;

LAB15:    t10 = 0;

LAB16:    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5407);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5415);
    t5 = (t0 + 2960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(53, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t8 = (t0 + 5400);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB13;

LAB14:    t11 = 0;

LAB17:    if (t11 < 16U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t11 = (t11 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5423);
    t10 = 1;
    if (16U == 16U)
        goto LAB26;

LAB27:    t10 = 0;

LAB28:    if (t10 == 0)
        goto LAB24;

LAB25:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5446);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5454);
    t5 = (t0 + 2960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(62, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    t8 = (t0 + 5439);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB25;

LAB26:    t11 = 0;

LAB29:    if (t11 < 16U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB27;

LAB31:    t11 = (t11 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5462);
    t10 = 1;
    if (16U == 16U)
        goto LAB38;

LAB39:    t10 = 0;

LAB40:    if (t10 == 0)
        goto LAB36;

LAB37:    xsi_set_current_line(68, ng0);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t8 = (t0 + 5478);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB37;

LAB38:    t11 = 0;

LAB41:    if (t11 < 16U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB39;

LAB43:    t11 = (t11 + 1);
    goto LAB41;

LAB44:    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}


extern void work_a_0882187345_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0882187345_2372691052_p_0};
	xsi_register_didat("work_a_0882187345_2372691052", "isim/MAC_multiplier_tb_isim_beh.exe.sim/work/a_0882187345_2372691052.didat");
	xsi_register_executes(pe);
}
