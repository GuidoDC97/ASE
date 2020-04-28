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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio2/display_tb.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_3003510437_2372691052_p_0(char *t0)
{
    char t11[16];
    char t12[16];
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
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5252);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
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
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 5256);
    t6 = (t12 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t13 = (3 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t14;
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t11, t2, t12);
    t8 = (t11 + 12U);
    t14 = *((unsigned int *)t8);
    t15 = (1U * t14);
    t16 = 1;
    if (4U == t15)
        goto LAB17;

LAB18:    t16 = 0;

LAB19:    if (t16 == 1)
        goto LAB14;

LAB15:    t10 = (unsigned char)0;

LAB16:    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5275);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(54, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t26 = (t0 + 5268);
    xsi_report(t26, 7U, (unsigned char)3);
    goto LAB13;

LAB14:    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t19 = (t0 + 5260);
    t22 = 1;
    if (8U == 8U)
        goto LAB23;

LAB24:    t22 = 0;

LAB25:    t10 = t22;
    goto LAB16;

LAB17:    t17 = 0;

LAB20:    if (t17 < 4U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t9 = (t4 + t17);
    t18 = (t7 + t17);
    if (*((unsigned char *)t9) != *((unsigned char *)t18))
        goto LAB18;

LAB22:    t17 = (t17 + 1);
    goto LAB20;

LAB23:    t23 = 0;

LAB26:    if (t23 < 8U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t24 = (t20 + t23);
    t25 = (t19 + t23);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB24;

LAB28:    t23 = (t23 + 1);
    goto LAB26;

LAB29:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 5279);
    t6 = (t12 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t13 = (3 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t14;
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t11, t2, t12);
    t8 = (t11 + 12U);
    t14 = *((unsigned int *)t8);
    t15 = (1U * t14);
    t16 = 1;
    if (4U == t15)
        goto LAB38;

LAB39:    t16 = 0;

LAB40:    if (t16 == 1)
        goto LAB35;

LAB36:    t10 = (unsigned char)0;

LAB37:    if (t10 == 0)
        goto LAB33;

LAB34:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5298);
    t5 = (t0 + 2896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(62, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2320);
    xsi_process_wait(t2, t3);

LAB52:    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

LAB33:    t26 = (t0 + 5291);
    xsi_report(t26, 7U, (unsigned char)3);
    goto LAB34;

LAB35:    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t19 = (t0 + 5283);
    t22 = 1;
    if (8U == 8U)
        goto LAB44;

LAB45:    t22 = 0;

LAB46:    t10 = t22;
    goto LAB37;

LAB38:    t17 = 0;

LAB41:    if (t17 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t9 = (t4 + t17);
    t18 = (t7 + t17);
    if (*((unsigned char *)t9) != *((unsigned char *)t18))
        goto LAB39;

LAB43:    t17 = (t17 + 1);
    goto LAB41;

LAB44:    t23 = 0;

LAB47:    if (t23 < 8U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t24 = (t20 + t23);
    t25 = (t19 + t23);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB45;

LAB49:    t23 = (t23 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 5302);
    t6 = (t12 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t13 = (3 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t14;
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t11, t2, t12);
    t8 = (t11 + 12U);
    t14 = *((unsigned int *)t8);
    t15 = (1U * t14);
    t16 = 1;
    if (4U == t15)
        goto LAB59;

LAB60:    t16 = 0;

LAB61:    if (t16 == 1)
        goto LAB56;

LAB57:    t10 = (unsigned char)0;

LAB58:    if (t10 == 0)
        goto LAB54;

LAB55:    xsi_set_current_line(68, ng0);

LAB73:    *((char **)t1) = &&LAB74;
    goto LAB1;

LAB51:    goto LAB50;

LAB53:    goto LAB51;

LAB54:    t26 = (t0 + 5314);
    xsi_report(t26, 7U, (unsigned char)3);
    goto LAB55;

LAB56:    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t19 = (t0 + 5306);
    t22 = 1;
    if (8U == 8U)
        goto LAB65;

LAB66:    t22 = 0;

LAB67:    t10 = t22;
    goto LAB58;

LAB59:    t17 = 0;

LAB62:    if (t17 < 4U)
        goto LAB63;
    else
        goto LAB61;

LAB63:    t9 = (t4 + t17);
    t18 = (t7 + t17);
    if (*((unsigned char *)t9) != *((unsigned char *)t18))
        goto LAB60;

LAB64:    t17 = (t17 + 1);
    goto LAB62;

LAB65:    t23 = 0;

LAB68:    if (t23 < 8U)
        goto LAB69;
    else
        goto LAB67;

LAB69:    t24 = (t20 + t23);
    t25 = (t19 + t23);
    if (*((unsigned char *)t24) != *((unsigned char *)t25))
        goto LAB66;

LAB70:    t23 = (t23 + 1);
    goto LAB68;

LAB71:    goto LAB2;

LAB72:    goto LAB71;

LAB74:    goto LAB72;

}


extern void work_a_3003510437_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3003510437_2372691052_p_0};
	xsi_register_didat("work_a_3003510437_2372691052", "isim/display_tb_isim_beh.exe.sim/work/a_3003510437_2372691052.didat");
	xsi_register_executes(pe);
}
