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
static const char *ng0 = "D:/Mina/Term 6/Computer Archetcture/Project/Final Project/SignExtend.vhd";



static void work_a_2750190074_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2752);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (15 - 15);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t11 = *((unsigned char *)t1);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 4472);
    t11 = (16U != 16U);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (t0 + 2752);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t14 = *((char **)t6);
    memcpy(t14, t1, 16U);
    xsi_driver_first_trans_delta(t3, 0U, 16U, 0LL);

LAB3:    t1 = (t0 + 2672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t3 = (t0 + 4456);
    t13 = (16U != 16U);
    if (t13 == 1)
        goto LAB5;

LAB6:    t5 = (t0 + 2752);
    t6 = (t5 + 56U);
    t14 = *((char **)t6);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 16U);
    xsi_driver_first_trans_delta(t5, 0U, 16U, 0LL);
    goto LAB3;

LAB5:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB8;

}


extern void work_a_2750190074_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2750190074_3212880686_p_0};
	xsi_register_didat("work_a_2750190074_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_2750190074_3212880686.didat");
	xsi_register_executes(pe);
}
