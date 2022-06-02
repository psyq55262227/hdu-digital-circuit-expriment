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
static const char *ng0 = "D:/veri/base/syncBinaryReverseCounter.v";
static unsigned int ng1[] = {14U, 0U};
static unsigned int ng2[] = {31U, 0U};
static unsigned int ng3[] = {15U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {30U, 0U};
static int ng7[] = {1, 0};
static int ng8[] = {0, 0};



static int sp_addResult(char *t1, char *t2)
{
    char t10[8];
    char t13[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t14;

LAB0:    t0 = 1;
    xsi_set_current_line(53, ng0);

LAB2:    xsi_set_current_line(54, ng0);
    t3 = (t1 + 3592);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);

LAB3:    t6 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t6, 5);
    if (t7 == 1)
        goto LAB4;

LAB5:    t3 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 5);
    if (t7 == 1)
        goto LAB6;

LAB7:
LAB9:
LAB8:    xsi_set_current_line(60, ng0);
    t3 = (t1 + 3752);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t8 = (t1 + 3592);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = ((char*)((ng5)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 4, t11, 4, t12, 4);
    xsi_vlogtype_concat(t10, 5, 5, 2U, t13, 4, t6, 1);
    t14 = (t1 + 3432);
    xsi_vlogvar_assign_value(t14, t10, 0, 0, 5);

LAB10:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(56, ng0);
    t8 = ((char*)((ng2)));
    t9 = (t1 + 3432);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 5);
    goto LAB10;

LAB6:    xsi_set_current_line(58, ng0);
    t4 = ((char*)((ng4)));
    t6 = (t1 + 3432);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 5);
    goto LAB10;

}

static int sp_subsResult(char *t1, char *t2)
{
    char t3[8];
    char t14[8];
    char t15[8];
    int t0;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;

LAB0:    t0 = 1;
    xsi_set_current_line(68, ng0);

LAB2:    xsi_set_current_line(69, ng0);
    t4 = (t1 + 4232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 4072);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlogtype_concat(t3, 5, 5, 2U, t9, 4, t6, 1);

LAB3:    t10 = ((char*)((ng5)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 5, t10, 5);
    if (t11 == 1)
        goto LAB4;

LAB5:    t4 = ((char*)((ng4)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 5, t4, 5);
    if (t11 == 1)
        goto LAB6;

LAB7:
LAB9:
LAB8:    xsi_set_current_line(75, ng0);
    t4 = (t1 + 4232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 4072);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng5)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_minus(t15, 4, t9, 4, t10, 4);
    xsi_vlogtype_concat(t14, 5, 5, 2U, t15, 4, t6, 1);
    t12 = (t1 + 3912);
    xsi_vlogvar_assign_value(t12, t14, 0, 0, 5);

LAB10:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(71, ng0);
    t12 = ((char*)((ng6)));
    t13 = (t1 + 3912);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 5);
    goto LAB10;

LAB6:    xsi_set_current_line(73, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t1 + 3912);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 5);
    goto LAB10;

}

static void Always_27_0(char *t0)
{
    char t6[8];
    char t52[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;

LAB0:    t1 = (t0 + 5152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 5472);
    *((int *)t2) = 1;
    t3 = (t0 + 5184);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1912U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(31, ng0);

LAB13:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2072U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB16;

LAB14:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB16:    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2232U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB24;

LAB21:    if (t18 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t6) = 1;

LAB24:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB25;

LAB26:
LAB27:
LAB19:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(30, ng0);
    t28 = ((char*)((ng4)));
    t29 = (t0 + 3112);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 1);
    t30 = (t0 + 3272);
    xsi_vlogvar_assign_value(t30, t28, 1, 0, 4);
    goto LAB12;

LAB17:    xsi_set_current_line(33, ng0);

LAB20:    xsi_set_current_line(34, ng0);
    t8 = (t0 + 2712U);
    t21 = *((char **)t8);
    t8 = (t0 + 3272);
    xsi_vlogvar_assign_value(t8, t21, 0, 0, 4);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB19;

LAB23:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(39, ng0);

LAB28:    xsi_set_current_line(40, ng0);
    t21 = (t0 + 2392U);
    t22 = *((char **)t21);

LAB29:    t21 = ((char*)((ng8)));
    t31 = xsi_vlog_unsigned_case_compare(t22, 1, t21, 32);
    if (t31 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng7)));
    t31 = xsi_vlog_unsigned_case_compare(t22, 1, t2, 32);
    if (t31 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB27;

LAB30:    xsi_set_current_line(42, ng0);

LAB35:    xsi_set_current_line(42, ng0);
    t28 = (t0 + 3272);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t32 = (t0 + 3112);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t0 + 4960);
    t36 = (t0 + 848);
    t37 = xsi_create_subprogram_invocation(t35, 0, t0, t36, 0, 0);
    t38 = (t0 + 3592);
    xsi_vlogvar_assign_value(t38, t30, 0, 0, 4);
    t39 = (t0 + 3752);
    xsi_vlogvar_assign_value(t39, t34, 0, 0, 1);

LAB36:    t40 = (t0 + 5056);
    t41 = *((char **)t40);
    t42 = (t41 + 80U);
    t43 = *((char **)t42);
    t44 = (t43 + 272U);
    t45 = *((char **)t44);
    t46 = (t45 + 0U);
    t47 = *((char **)t46);
    t48 = ((int  (*)(char *, char *))t47)(t0, t41);
    if (t48 != 0)
        goto LAB38;

LAB37:    t41 = (t0 + 5056);
    t49 = *((char **)t41);
    t41 = (t0 + 3432);
    t50 = (t41 + 56U);
    t51 = *((char **)t50);
    memcpy(t52, t51, 8);
    t53 = (t0 + 848);
    t54 = (t0 + 4960);
    t55 = 0;
    xsi_delete_subprogram_invocation(t53, t49, t0, t54, t55);
    t56 = (t0 + 3112);
    xsi_vlogvar_assign_value(t56, t52, 0, 0, 1);
    t57 = (t0 + 3272);
    xsi_vlogvar_assign_value(t57, t52, 1, 0, 4);
    goto LAB34;

LAB32:    xsi_set_current_line(44, ng0);

LAB39:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 3272);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 3112);
    t8 = (t7 + 56U);
    t21 = *((char **)t8);
    t28 = (t0 + 4960);
    t29 = (t0 + 1280);
    t30 = xsi_create_subprogram_invocation(t28, 0, t0, t29, 0, 0);
    t32 = (t0 + 4072);
    xsi_vlogvar_assign_value(t32, t5, 0, 0, 4);
    t33 = (t0 + 4232);
    xsi_vlogvar_assign_value(t33, t21, 0, 0, 1);

LAB40:    t34 = (t0 + 5056);
    t35 = *((char **)t34);
    t36 = (t35 + 80U);
    t37 = *((char **)t36);
    t38 = (t37 + 272U);
    t39 = *((char **)t38);
    t40 = (t39 + 0U);
    t41 = *((char **)t40);
    t48 = ((int  (*)(char *, char *))t41)(t0, t35);
    if (t48 != 0)
        goto LAB42;

LAB41:    t35 = (t0 + 5056);
    t42 = *((char **)t35);
    t35 = (t0 + 3912);
    t43 = (t35 + 56U);
    t44 = *((char **)t43);
    memcpy(t6, t44, 8);
    t45 = (t0 + 1280);
    t46 = (t0 + 4960);
    t47 = 0;
    xsi_delete_subprogram_invocation(t45, t42, t0, t46, t47);
    t49 = (t0 + 3112);
    xsi_vlogvar_assign_value(t49, t6, 0, 0, 1);
    t50 = (t0 + 3272);
    xsi_vlogvar_assign_value(t50, t6, 1, 0, 4);
    goto LAB34;

LAB38:    t40 = (t0 + 5152U);
    *((char **)t40) = &&LAB36;
    goto LAB1;

LAB42:    t34 = (t0 + 5152U);
    *((char **)t34) = &&LAB40;
    goto LAB1;

}


extern void work_m_00000000002019444982_0961105588_init()
{
	static char *pe[] = {(void *)Always_27_0};
	static char *se[] = {(void *)sp_addResult,(void *)sp_subsResult};
	xsi_register_didat("work_m_00000000002019444982_0961105588", "isim/syncBinaryReverseCounter_test_isim_beh.exe.sim/work/m_00000000002019444982_0961105588.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
