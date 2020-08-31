/*
 Navicat Premium Data Transfer

 Source Server         : localhost9.3
 Source Server Type    : PostgreSQL
 Source Server Version : 90325
 Source Host           : localhost:5432
 Source Catalog        : scott
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90325
 File Encoding         : 65001

 Date: 31/08/2020 17:32:18
*/


-- ----------------------------
-- Sequence structure for dept_deptno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."dept_deptno_seq";
CREATE SEQUENCE "public"."dept_deptno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for emp_empno_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."emp_empno_seq";
CREATE SEQUENCE "public"."emp_empno_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."dept";
CREATE TABLE "public"."dept" (
  "deptno" int4 NOT NULL DEFAULT nextval('dept_deptno_seq'::regclass),
  "dname" varchar(255) COLLATE "pg_catalog"."default",
  "loc" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO "public"."dept" VALUES (1, 'manager', '1');
INSERT INTO "public"."dept" VALUES (2, 'sal', '2');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS "public"."emp";
CREATE TABLE "public"."emp" (
  "empno" int4 NOT NULL DEFAULT nextval('emp_empno_seq'::regclass),
  "comm" float4,
  "ename" varchar(255) COLLATE "pg_catalog"."default",
  "hiredate" timestamp(6),
  "job" varchar(255) COLLATE "pg_catalog"."default",
  "mgr" int4,
  "sal" float4,
  "deptno" int4
)
;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO "public"."emp" VALUES (1, 2300, 'zoe', '2020-08-28 18:05:04', 'manager', NULL, 30000, 1);
INSERT INTO "public"."emp" VALUES (2, 5322, 'nelson', '2020-08-28 18:05:32', 'sal', NULL, 3000, 2);
INSERT INTO "public"."emp" VALUES (5, 20000, 'zoe1', '2020-08-31 17:08:54.235', 'sal', NULL, 4000, NULL);
INSERT INTO "public"."emp" VALUES (6, 20000, 'zoe1', '2020-08-31 17:09:19.469', 'sal', NULL, 4000, NULL);
INSERT INTO "public"."emp" VALUES (7, 20000, 'zoe1', '2020-08-31 17:09:19.995', 'sal', NULL, 4000, NULL);
INSERT INTO "public"."emp" VALUES (8, 20000, 'zoe1', '2020-08-31 17:09:20.227', 'sal', NULL, 4000, NULL);
INSERT INTO "public"."emp" VALUES (9, 20000, 'zoe1', '2020-08-31 17:09:20.442', 'sal', NULL, 4000, NULL);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."dept_deptno_seq"
OWNED BY "public"."dept"."deptno";
SELECT setval('"public"."dept_deptno_seq"', 3, true);
ALTER SEQUENCE "public"."emp_empno_seq"
OWNED BY "public"."emp"."empno";
SELECT setval('"public"."emp_empno_seq"', 10, true);

-- ----------------------------
-- Primary Key structure for table dept
-- ----------------------------
ALTER TABLE "public"."dept" ADD CONSTRAINT "dept_pkey" PRIMARY KEY ("deptno");

-- ----------------------------
-- Primary Key structure for table emp
-- ----------------------------
ALTER TABLE "public"."emp" ADD CONSTRAINT "emp_pkey" PRIMARY KEY ("empno");
