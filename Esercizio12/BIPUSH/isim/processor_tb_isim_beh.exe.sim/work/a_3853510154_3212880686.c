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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio12/BIPUSH/control_unit.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_3649664029;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3853510154_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7464);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t1 = (t0 + 7688);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 36U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 7752);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 7816);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 14485);
    t8 = (t0 + 7688);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 36U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 7752);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 7816);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_3853510154_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(101, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = (34 - 35);
    t4 = (t3 * -1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 7880);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t7);

LAB2:    t12 = (t0 + 7480);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_2(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_3649664029) + 2968U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 35);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB7:    t28 = (t0 + 3272U);
    t29 = *((char **)t28);
    t28 = (t0 + 7944);
    t30 = (t28 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t29, 8U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t34 = (t0 + 7496);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 3272U);
    t13 = *((char **)t12);
    t12 = (t0 + 3280U);
    t14 = *((char **)t12);
    t15 = (t0 + 1352U);
    t16 = *((char **)t15);
    t15 = (t0 + 1360U);
    t17 = *((char **)t15);
    t18 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t11, t13, t14, t16, t17);
    t19 = (t11 + 12U);
    t20 = *((unsigned int *)t19);
    t21 = (1U * t20);
    t22 = (8U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 7944);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t18, 8U);
    xsi_driver_first_trans_fast(t23);
    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t21, 0);
    goto LAB6;

LAB8:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
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
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(104, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = ((WORK_P_3649664029) + 3088U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 35);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t4 + t10);
    t11 = *((unsigned char *)t1);
    t12 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t11);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t13 = (t0 + 2632U);
    t16 = *((char **)t13);
    t13 = ((WORK_P_3649664029) + 3208U);
    t17 = *((char **)t13);
    t18 = *((int *)t17);
    t19 = (t18 - 35);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t13 = (t16 + t22);
    t23 = *((unsigned char *)t13);
    t24 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t15, t23);
    t25 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t12, t24);
    t26 = (t0 + 8008);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = t25;
    xsi_driver_first_trans_fast(t26);

LAB2:    t31 = (t0 + 7512);
    *((int *)t31) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_4(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(105, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_3649664029) + 2848U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 35);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t10 = (t0 + 3592U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t13 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t9, t12);
    t10 = (t0 + 3432U);
    t14 = *((char **)t10);
    t16 = ((IEEE_P_2592010699) + 4024);
    t17 = (t0 + 3440U);
    t18 = *((char **)t17);
    t10 = xsi_base_array_concat(t10, t15, t16, (char)99, t13, (char)97, t14, t18, (char)101);
    t19 = (1U + 8U);
    t20 = (9U != t19);
    if (t20 == 1)
        goto LAB5;

LAB6:    t21 = (t0 + 8072);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t10, 9U);
    xsi_driver_first_trans_fast(t21);

LAB2:    t26 = (t0 + 7528);
    *((int *)t26) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(9U, t19, 0);
    goto LAB6;

}

static void work_a_3853510154_3212880686_p_5(char *t0)
{
    char t12[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    int t13;
    unsigned int t14;
    int t15;
    unsigned char t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    int t22;
    unsigned int t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(110, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t2 = t1;
    memset(t2, (unsigned char)2, 9U);
    t3 = (t0 + 8136);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 9U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t8 = (3 - 35);
    t9 = (t8 * -1);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t3 = (t12 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 3;
    t4 = (t3 + 4U);
    *((int *)t4) = 0;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t14;
    t4 = ((WORK_P_3649664029) + 1768U);
    t5 = *((char **)t4);
    t15 = *((int *)t5);
    t16 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t1, t12, t15);
    if (t16 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7544);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(113, ng0);
    t4 = (t0 + 2632U);
    t6 = *((char **)t4);
    t14 = (3 - 35);
    t17 = (t14 * -1);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t4 = (t6 + t19);
    t7 = (t20 + 0U);
    t21 = (t7 + 0U);
    *((int *)t21) = 3;
    t21 = (t7 + 4U);
    *((int *)t21) = 0;
    t21 = (t7 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 3);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t21 = (t7 + 12U);
    *((unsigned int *)t21) = t23;
    t24 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t20);
    t25 = (t24 - 8);
    t23 = (t25 * -1);
    t26 = (1 * t23);
    t27 = (0U + t26);
    t21 = (t0 + 8136);
    t28 = (t21 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = (unsigned char)3;
    xsi_driver_first_trans_delta(t21, t27, 1, 0LL);
    goto LAB3;

}

static void work_a_3853510154_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(118, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = (23 - 35);
    t4 = (t3 * -1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 8200);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 7560);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(119, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = (15 - 35);
    t4 = (t3 * -1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 8264);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 9U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 7576);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(120, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = (6 - 35);
    t4 = (t3 * -1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 8328);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 7592);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3853510154_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(121, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 8392);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7608);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3853510154_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3853510154_3212880686_p_0,(void *)work_a_3853510154_3212880686_p_1,(void *)work_a_3853510154_3212880686_p_2,(void *)work_a_3853510154_3212880686_p_3,(void *)work_a_3853510154_3212880686_p_4,(void *)work_a_3853510154_3212880686_p_5,(void *)work_a_3853510154_3212880686_p_6,(void *)work_a_3853510154_3212880686_p_7,(void *)work_a_3853510154_3212880686_p_8,(void *)work_a_3853510154_3212880686_p_9};
	xsi_register_didat("work_a_3853510154_3212880686", "isim/processor_tb_isim_beh.exe.sim/work/a_3853510154_3212880686.didat");
	xsi_register_executes(pe);
}
