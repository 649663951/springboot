create table user_info(
  id           bigint(10) PRIMARY KEY AUTO_INCREMENT COMMENT '主键id',
  username    VARCHAR(20) COMMENT '用户名',
  password    VARCHAR(20) COMMENT '密码',
  created_By   VARCHAR(20) COMMENT '创建人',
  created_Date datetime COMMENT '创建时间',
  update_By   VARCHAR(20) COMMENT '更新人',
  update_Date datetime COMMENT '修改时间',
  is_Vaild   VARCHAR(2) COMMENT '有效标识  0无效  1有效'
);

create table heros_info(
  id           bigint(10) PRIMARY KEY AUTO_INCREMENT COMMENT '主键id',
  name    VARCHAR(20) COMMENT '中文名',
  anotherName    VARCHAR(20) COMMENT '昵称',
  position    VARCHAR(10) COMMENT '定位',
  site    VARCHAR(10) COMMENT '位置', 
  motto  VARCHAR(100) COMMENT '座右铭',
  price    VARCHAR(10) COMMENT '价格',
  skill_q  VARCHAR(10) COMMENT '技能Q',
  skill_w  VARCHAR(10) COMMENT '技能W',
  skill_e  VARCHAR(10) COMMENT '技能E',
  skill_r  VARCHAR(10) COMMENT '技能R',
  unactive   VARCHAR(10) COMMENT '被动',
  created_By   VARCHAR(20) COMMENT '创建人',
  created_Date datetime COMMENT '创建时间',
  update_By   VARCHAR(20) COMMENT '更新人',
  update_Date datetime COMMENT '修改时间',
  is_Vaild   VARCHAR(2) COMMENT '有效标识  0无效  1有效'
);

