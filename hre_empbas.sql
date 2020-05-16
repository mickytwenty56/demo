

-- ----------------------------
-- Table structure for hre_empbas
-- ----------------------------
DROP TABLE IF EXISTS "public"."hre_empbas";
CREATE TABLE "public"."hre_empbas" (
  "id" int4 NOT NULL DEFAULT nextval('hre_empbas_id_seq'::regclass),
  "emp_no" varchar(20) COLLATE "pg_catalog"."default",
  "ch_name" varchar(60) COLLATE "pg_catalog"."default",
  "sex_type" varchar COLLATE "pg_catalog"."default",
  "birth_date" timestamp(6),
  "hr_no" varchar(20) COLLATE "pg_catalog"."default",
  "his_no" varchar(20) COLLATE "pg_catalog"."default",
  "come_date" timestamp(6),
  "assign_date" timestamp(6),
  "hre_orgbas_dept_id" int4,
  "dept_no" varchar(20) COLLATE "pg_catalog"."default",
  "emp_type" varchar COLLATE "pg_catalog"."default",
  "leave_date" timestamp(6),
  "hre_postset_dut_id" int4,
  "hre_postset_tit_id" int4,
  "hre_postset_pos_id" int4,
  "pos_type" varchar COLLATE "pg_catalog"."default",
  "pos_rank" varchar(60) COLLATE "pg_catalog"."default",
  "weight" float8,
  "active" bool,
  "start_date" varchar COLLATE "pg_catalog"."default",
  "end_date" varchar COLLATE "pg_catalog"."default",
  "remark" text COLLATE "pg_catalog"."default",
  "doc_code" varchar(15) COLLATE "pg_catalog"."default",
  "doc_level" varchar COLLATE "pg_catalog"."default",
  "pf_rate" float8,
  "hre_orgbas_med_id" int4,
  "allot_dept" varchar(20) COLLATE "pg_catalog"."default",
  "pf_to_doc" bool,
  "director_flag" bool,
  "deputy_director_flag" bool,
  "leader_flag" bool,
  "expiry_date" timestamp(6),
  "res_users_id" int4,
  "create_uid" int4,
  "create_date" timestamp(6),
  "write_uid" int4,
  "write_date" timestamp(6),
  "a_tel" varchar(20) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."hre_empbas"."emp_no" IS 'Salary code';
COMMENT ON COLUMN "public"."hre_empbas"."ch_name" IS 'Employee name';
COMMENT ON COLUMN "public"."hre_empbas"."sex_type" IS 'Gender';
COMMENT ON COLUMN "public"."hre_empbas"."birth_date" IS 'Birth date';
COMMENT ON COLUMN "public"."hre_empbas"."hr_no" IS 'Employer number';
COMMENT ON COLUMN "public"."hre_empbas"."his_no" IS 'His code';
COMMENT ON COLUMN "public"."hre_empbas"."come_date" IS 'Date of arrival';
COMMENT ON COLUMN "public"."hre_empbas"."assign_date" IS 'Appointment date';
COMMENT ON COLUMN "public"."hre_empbas"."hre_orgbas_dept_id" IS 'Department';
COMMENT ON COLUMN "public"."hre_empbas"."dept_no" IS 'Department code';
COMMENT ON COLUMN "public"."hre_empbas"."emp_type" IS 'Emp Type';
COMMENT ON COLUMN "public"."hre_empbas"."leave_date" IS 'Date of departure';
COMMENT ON COLUMN "public"."hre_empbas"."hre_postset_dut_id" IS 'Duties';
COMMENT ON COLUMN "public"."hre_empbas"."hre_postset_tit_id" IS 'Title';
COMMENT ON COLUMN "public"."hre_empbas"."hre_postset_pos_id" IS 'Post';
COMMENT ON COLUMN "public"."hre_empbas"."pos_type" IS 'Pos Type';
COMMENT ON COLUMN "public"."hre_empbas"."pos_rank" IS 'Rank';
COMMENT ON COLUMN "public"."hre_empbas"."weight" IS 'Weight';
COMMENT ON COLUMN "public"."hre_empbas"."active" IS 'Active';
COMMENT ON COLUMN "public"."hre_empbas"."start_date" IS 'Start date';
COMMENT ON COLUMN "public"."hre_empbas"."end_date" IS 'End date';
COMMENT ON COLUMN "public"."hre_empbas"."remark" IS 'Remark';
COMMENT ON COLUMN "public"."hre_empbas"."doc_code" IS 'Doctor code';
COMMENT ON COLUMN "public"."hre_empbas"."doc_level" IS 'Doc Level';
COMMENT ON COLUMN "public"."hre_empbas"."pf_rate" IS 'Physician PF rate';
COMMENT ON COLUMN "public"."hre_empbas"."hre_orgbas_med_id" IS 'Medical Group';
COMMENT ON COLUMN "public"."hre_empbas"."allot_dept" IS 'Medical code';
COMMENT ON COLUMN "public"."hre_empbas"."pf_to_doc" IS 'PF directly to the individual';
COMMENT ON COLUMN "public"."hre_empbas"."director_flag" IS 'Director (care chief)';
COMMENT ON COLUMN "public"."hre_empbas"."deputy_director_flag" IS 'Deputy director';
COMMENT ON COLUMN "public"."hre_empbas"."leader_flag" IS 'Leader';
COMMENT ON COLUMN "public"."hre_empbas"."expiry_date" IS 'Expiry date';
COMMENT ON COLUMN "public"."hre_empbas"."res_users_id" IS 'Users';
COMMENT ON COLUMN "public"."hre_empbas"."create_uid" IS 'Created by';
COMMENT ON COLUMN "public"."hre_empbas"."create_date" IS 'Created on';
COMMENT ON COLUMN "public"."hre_empbas"."write_uid" IS 'Last Updated by';
COMMENT ON COLUMN "public"."hre_empbas"."write_date" IS 'Last Updated on';
COMMENT ON COLUMN "public"."hre_empbas"."a_tel" IS '行動電話';
COMMENT ON TABLE "public"."hre_empbas" IS 'hre.empbas';

-- ----------------------------
-- Indexes structure for table hre_empbas
-- ----------------------------
CREATE INDEX "hre_empbas_doc_code_index" ON "public"."hre_empbas" USING btree (
  "doc_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "hre_empbas_emp_no_index" ON "public"."hre_empbas" USING btree (
  "emp_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "hre_empbas_res_users_id_index" ON "public"."hre_empbas" USING btree (
  "res_users_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table hre_empbas
-- ----------------------------
ALTER TABLE "public"."hre_empbas" ADD CONSTRAINT "hre_empbas_uniq_hre_empbas_01" UNIQUE ("emp_no");
COMMENT ON CONSTRAINT "hre_empbas_uniq_hre_empbas_01" ON "public"."hre_empbas" IS 'unique(emp_no)';

-- ----------------------------
-- Primary Key structure for table hre_empbas
-- ----------------------------
ALTER TABLE "public"."hre_empbas" ADD CONSTRAINT "hre_empbas_pkey" PRIMARY KEY ("id");
