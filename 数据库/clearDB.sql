#SELECT * from city_info;
#TRUNCATE table configuration;
UPDATE configuration set map='';
TRUNCATE table access_card_info;
TRUNCATE table access_card_privilege;
TRUNCATE table access_card_record;
TRUNCATE table access_card_user;
TRUNCATE table access_time_group;
TRUNCATE table base_building_info;
TRUNCATE table base_client_info;
TRUNCATE table base_device_type;
TRUNCATE table base_guard_info;
TRUNCATE table base_independent_info;
TRUNCATE table base_indoor_info;
TRUNCATE table base_intercom_info;
TRUNCATE table base_outdoor_info;
TRUNCATE table base_owner_info;
TRUNCATE table base_permission_info;
TRUNCATE table base_role_info;
TRUNCATE table base_room_info;
TRUNCATE table base_unit_info;
TRUNCATE table base_user_info;
TRUNCATE table base_wall_info;
TRUNCATE table base_watch_info;
TRUNCATE table booking_act_info;
TRUNCATE table booking_act_record;
TRUNCATE table booking_res_info;
TRUNCATE table booking_res_record;
TRUNCATE table booking_res_status;
TRUNCATE table call_record;

TRUNCATE table defense_alarm_record;
TRUNCATE table defense_record;
TRUNCATE table device;
TRUNCATE table device_group;
TRUNCATE table sippeers;

TRUNCATE table sippeers_status;

TRUNCATE table device_ip_info;
TRUNCATE table message_event;
TRUNCATE table message_news;
TRUNCATE table message_record;

TRUNCATE table message_template;
TRUNCATE table message_traffic_ban_city;
TRUNCATE table message_traffic_ban_info;
TRUNCATE table message_weather;
TRUNCATE table monitor_record;
TRUNCATE table notice_info;
TRUNCATE table offline_record;
TRUNCATE table operate_record;

INSERT INTO `device_group` VALUES ('1', '9901000000000', '', '', null);
INSERT INTO `device_group` VALUES ('2', '9907000000000', '', null, null);
INSERT INTO `device_group` VALUES ('4', '9902000000000', '', null, null);