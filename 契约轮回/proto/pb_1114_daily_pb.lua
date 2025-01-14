-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "tolua.protobuf/protobuf"
module('pb_1114_daily_pb')


M_DAILY_INFO_TOS = protobuf.Descriptor();
M_DAILY_INFO_TOC = protobuf.Descriptor();
M_DAILY_INFO_TOC_LIST_FIELD = protobuf.FieldDescriptor();
M_DAILY_INFO_TOC_REWARDED_FIELD = protobuf.FieldDescriptor();
M_DAILY_INFO_TOC_TOTAL_FIELD = protobuf.FieldDescriptor();
M_DAILY_UPDATE_TOC = protobuf.Descriptor();
M_DAILY_UPDATE_TOC_DAILY_FIELD = protobuf.FieldDescriptor();
M_DAILY_UPDATE_TOC_TOTAL_FIELD = protobuf.FieldDescriptor();
M_DAILY_REWARD_TOS = protobuf.Descriptor();
M_DAILY_REWARD_TOS_ID_FIELD = protobuf.FieldDescriptor();
M_DAILY_REWARD_TOC = protobuf.Descriptor();
M_DAILY_REWARD_TOC_ID_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_TOS = protobuf.Descriptor();
M_DAILY_ILLUSION_TOC = protobuf.Descriptor();
M_DAILY_ILLUSION_TOC_LEVEL_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_TOC_EXP_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_TOC_SHOW_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_UPGRADE_TOS = protobuf.Descriptor();
M_DAILY_ILLUSION_UPGRADE_TOC = protobuf.Descriptor();
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_SHOW_TOS = protobuf.Descriptor();
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_SHOW_TOC = protobuf.Descriptor();
M_DAILY_ILLUSION_SELECT_TOS = protobuf.Descriptor();
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD = protobuf.FieldDescriptor();
M_DAILY_ILLUSION_SELECT_TOC = protobuf.Descriptor();
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD = protobuf.FieldDescriptor();
P_DAILY = protobuf.Descriptor();
P_DAILY_ID_FIELD = protobuf.FieldDescriptor();
P_DAILY_PROGRESS_FIELD = protobuf.FieldDescriptor();

M_DAILY_INFO_TOS.name = "m_daily_info_tos"
M_DAILY_INFO_TOS.full_name = ".m_daily_info_tos"
M_DAILY_INFO_TOS.nested_types = {}
M_DAILY_INFO_TOS.enum_types = {}
M_DAILY_INFO_TOS.fields = {}
M_DAILY_INFO_TOS.is_extendable = false
M_DAILY_INFO_TOS.extensions = {}
M_DAILY_INFO_TOC_LIST_FIELD.name = "list"
M_DAILY_INFO_TOC_LIST_FIELD.full_name = ".m_daily_info_toc.list"
M_DAILY_INFO_TOC_LIST_FIELD.number = 1
M_DAILY_INFO_TOC_LIST_FIELD.index = 0
M_DAILY_INFO_TOC_LIST_FIELD.label = 3
M_DAILY_INFO_TOC_LIST_FIELD.has_default_value = false
M_DAILY_INFO_TOC_LIST_FIELD.default_value = {}
M_DAILY_INFO_TOC_LIST_FIELD.message_type = P_DAILY
M_DAILY_INFO_TOC_LIST_FIELD.type = 11
M_DAILY_INFO_TOC_LIST_FIELD.cpp_type = 10

M_DAILY_INFO_TOC_REWARDED_FIELD.name = "rewarded"
M_DAILY_INFO_TOC_REWARDED_FIELD.full_name = ".m_daily_info_toc.rewarded"
M_DAILY_INFO_TOC_REWARDED_FIELD.number = 2
M_DAILY_INFO_TOC_REWARDED_FIELD.index = 1
M_DAILY_INFO_TOC_REWARDED_FIELD.label = 3
M_DAILY_INFO_TOC_REWARDED_FIELD.has_default_value = false
M_DAILY_INFO_TOC_REWARDED_FIELD.default_value = {}
M_DAILY_INFO_TOC_REWARDED_FIELD.type = 5
M_DAILY_INFO_TOC_REWARDED_FIELD.cpp_type = 1

M_DAILY_INFO_TOC_TOTAL_FIELD.name = "total"
M_DAILY_INFO_TOC_TOTAL_FIELD.full_name = ".m_daily_info_toc.total"
M_DAILY_INFO_TOC_TOTAL_FIELD.number = 3
M_DAILY_INFO_TOC_TOTAL_FIELD.index = 2
M_DAILY_INFO_TOC_TOTAL_FIELD.label = 2
M_DAILY_INFO_TOC_TOTAL_FIELD.has_default_value = false
M_DAILY_INFO_TOC_TOTAL_FIELD.default_value = 0
M_DAILY_INFO_TOC_TOTAL_FIELD.type = 5
M_DAILY_INFO_TOC_TOTAL_FIELD.cpp_type = 1

M_DAILY_INFO_TOC.name = "m_daily_info_toc"
M_DAILY_INFO_TOC.full_name = ".m_daily_info_toc"
M_DAILY_INFO_TOC.nested_types = {}
M_DAILY_INFO_TOC.enum_types = {}
M_DAILY_INFO_TOC.fields = {M_DAILY_INFO_TOC_LIST_FIELD, M_DAILY_INFO_TOC_REWARDED_FIELD, M_DAILY_INFO_TOC_TOTAL_FIELD}
M_DAILY_INFO_TOC.is_extendable = false
M_DAILY_INFO_TOC.extensions = {}
M_DAILY_UPDATE_TOC_DAILY_FIELD.name = "daily"
M_DAILY_UPDATE_TOC_DAILY_FIELD.full_name = ".m_daily_update_toc.daily"
M_DAILY_UPDATE_TOC_DAILY_FIELD.number = 1
M_DAILY_UPDATE_TOC_DAILY_FIELD.index = 0
M_DAILY_UPDATE_TOC_DAILY_FIELD.label = 2
M_DAILY_UPDATE_TOC_DAILY_FIELD.has_default_value = false
M_DAILY_UPDATE_TOC_DAILY_FIELD.default_value = nil
M_DAILY_UPDATE_TOC_DAILY_FIELD.message_type = P_DAILY
M_DAILY_UPDATE_TOC_DAILY_FIELD.type = 11
M_DAILY_UPDATE_TOC_DAILY_FIELD.cpp_type = 10

M_DAILY_UPDATE_TOC_TOTAL_FIELD.name = "total"
M_DAILY_UPDATE_TOC_TOTAL_FIELD.full_name = ".m_daily_update_toc.total"
M_DAILY_UPDATE_TOC_TOTAL_FIELD.number = 2
M_DAILY_UPDATE_TOC_TOTAL_FIELD.index = 1
M_DAILY_UPDATE_TOC_TOTAL_FIELD.label = 2
M_DAILY_UPDATE_TOC_TOTAL_FIELD.has_default_value = false
M_DAILY_UPDATE_TOC_TOTAL_FIELD.default_value = 0
M_DAILY_UPDATE_TOC_TOTAL_FIELD.type = 5
M_DAILY_UPDATE_TOC_TOTAL_FIELD.cpp_type = 1

M_DAILY_UPDATE_TOC.name = "m_daily_update_toc"
M_DAILY_UPDATE_TOC.full_name = ".m_daily_update_toc"
M_DAILY_UPDATE_TOC.nested_types = {}
M_DAILY_UPDATE_TOC.enum_types = {}
M_DAILY_UPDATE_TOC.fields = {M_DAILY_UPDATE_TOC_DAILY_FIELD, M_DAILY_UPDATE_TOC_TOTAL_FIELD}
M_DAILY_UPDATE_TOC.is_extendable = false
M_DAILY_UPDATE_TOC.extensions = {}
M_DAILY_REWARD_TOS_ID_FIELD.name = "id"
M_DAILY_REWARD_TOS_ID_FIELD.full_name = ".m_daily_reward_tos.id"
M_DAILY_REWARD_TOS_ID_FIELD.number = 1
M_DAILY_REWARD_TOS_ID_FIELD.index = 0
M_DAILY_REWARD_TOS_ID_FIELD.label = 2
M_DAILY_REWARD_TOS_ID_FIELD.has_default_value = false
M_DAILY_REWARD_TOS_ID_FIELD.default_value = 0
M_DAILY_REWARD_TOS_ID_FIELD.type = 5
M_DAILY_REWARD_TOS_ID_FIELD.cpp_type = 1

M_DAILY_REWARD_TOS.name = "m_daily_reward_tos"
M_DAILY_REWARD_TOS.full_name = ".m_daily_reward_tos"
M_DAILY_REWARD_TOS.nested_types = {}
M_DAILY_REWARD_TOS.enum_types = {}
M_DAILY_REWARD_TOS.fields = {M_DAILY_REWARD_TOS_ID_FIELD}
M_DAILY_REWARD_TOS.is_extendable = false
M_DAILY_REWARD_TOS.extensions = {}
M_DAILY_REWARD_TOC_ID_FIELD.name = "id"
M_DAILY_REWARD_TOC_ID_FIELD.full_name = ".m_daily_reward_toc.id"
M_DAILY_REWARD_TOC_ID_FIELD.number = 1
M_DAILY_REWARD_TOC_ID_FIELD.index = 0
M_DAILY_REWARD_TOC_ID_FIELD.label = 2
M_DAILY_REWARD_TOC_ID_FIELD.has_default_value = false
M_DAILY_REWARD_TOC_ID_FIELD.default_value = 0
M_DAILY_REWARD_TOC_ID_FIELD.type = 5
M_DAILY_REWARD_TOC_ID_FIELD.cpp_type = 1

M_DAILY_REWARD_TOC.name = "m_daily_reward_toc"
M_DAILY_REWARD_TOC.full_name = ".m_daily_reward_toc"
M_DAILY_REWARD_TOC.nested_types = {}
M_DAILY_REWARD_TOC.enum_types = {}
M_DAILY_REWARD_TOC.fields = {M_DAILY_REWARD_TOC_ID_FIELD}
M_DAILY_REWARD_TOC.is_extendable = false
M_DAILY_REWARD_TOC.extensions = {}
M_DAILY_ILLUSION_TOS.name = "m_daily_illusion_tos"
M_DAILY_ILLUSION_TOS.full_name = ".m_daily_illusion_tos"
M_DAILY_ILLUSION_TOS.nested_types = {}
M_DAILY_ILLUSION_TOS.enum_types = {}
M_DAILY_ILLUSION_TOS.fields = {}
M_DAILY_ILLUSION_TOS.is_extendable = false
M_DAILY_ILLUSION_TOS.extensions = {}
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.name = "level"
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.full_name = ".m_daily_illusion_toc.level"
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.number = 1
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.index = 0
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.label = 2
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.has_default_value = false
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.default_value = 0
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.type = 5
M_DAILY_ILLUSION_TOC_LEVEL_FIELD.cpp_type = 1

M_DAILY_ILLUSION_TOC_EXP_FIELD.name = "exp"
M_DAILY_ILLUSION_TOC_EXP_FIELD.full_name = ".m_daily_illusion_toc.exp"
M_DAILY_ILLUSION_TOC_EXP_FIELD.number = 2
M_DAILY_ILLUSION_TOC_EXP_FIELD.index = 1
M_DAILY_ILLUSION_TOC_EXP_FIELD.label = 2
M_DAILY_ILLUSION_TOC_EXP_FIELD.has_default_value = false
M_DAILY_ILLUSION_TOC_EXP_FIELD.default_value = 0
M_DAILY_ILLUSION_TOC_EXP_FIELD.type = 5
M_DAILY_ILLUSION_TOC_EXP_FIELD.cpp_type = 1

M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.name = "show_id"
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.full_name = ".m_daily_illusion_toc.show_id"
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.number = 3
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.index = 2
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.label = 2
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.has_default_value = false
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.default_value = 0
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.type = 5
M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD.cpp_type = 1

M_DAILY_ILLUSION_TOC_SHOW_FIELD.name = "show"
M_DAILY_ILLUSION_TOC_SHOW_FIELD.full_name = ".m_daily_illusion_toc.show"
M_DAILY_ILLUSION_TOC_SHOW_FIELD.number = 4
M_DAILY_ILLUSION_TOC_SHOW_FIELD.index = 3
M_DAILY_ILLUSION_TOC_SHOW_FIELD.label = 2
M_DAILY_ILLUSION_TOC_SHOW_FIELD.has_default_value = false
M_DAILY_ILLUSION_TOC_SHOW_FIELD.default_value = false
M_DAILY_ILLUSION_TOC_SHOW_FIELD.type = 8
M_DAILY_ILLUSION_TOC_SHOW_FIELD.cpp_type = 7

M_DAILY_ILLUSION_TOC.name = "m_daily_illusion_toc"
M_DAILY_ILLUSION_TOC.full_name = ".m_daily_illusion_toc"
M_DAILY_ILLUSION_TOC.nested_types = {}
M_DAILY_ILLUSION_TOC.enum_types = {}
M_DAILY_ILLUSION_TOC.fields = {M_DAILY_ILLUSION_TOC_LEVEL_FIELD, M_DAILY_ILLUSION_TOC_EXP_FIELD, M_DAILY_ILLUSION_TOC_SHOW_ID_FIELD, M_DAILY_ILLUSION_TOC_SHOW_FIELD}
M_DAILY_ILLUSION_TOC.is_extendable = false
M_DAILY_ILLUSION_TOC.extensions = {}
M_DAILY_ILLUSION_UPGRADE_TOS.name = "m_daily_illusion_upgrade_tos"
M_DAILY_ILLUSION_UPGRADE_TOS.full_name = ".m_daily_illusion_upgrade_tos"
M_DAILY_ILLUSION_UPGRADE_TOS.nested_types = {}
M_DAILY_ILLUSION_UPGRADE_TOS.enum_types = {}
M_DAILY_ILLUSION_UPGRADE_TOS.fields = {}
M_DAILY_ILLUSION_UPGRADE_TOS.is_extendable = false
M_DAILY_ILLUSION_UPGRADE_TOS.extensions = {}
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.name = "level"
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.full_name = ".m_daily_illusion_upgrade_toc.level"
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.number = 1
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.index = 0
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.label = 2
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.has_default_value = false
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.default_value = 0
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.type = 5
M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD.cpp_type = 1

M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.name = "exp"
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.full_name = ".m_daily_illusion_upgrade_toc.exp"
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.number = 2
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.index = 1
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.label = 2
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.has_default_value = false
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.default_value = 0
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.type = 5
M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD.cpp_type = 1

M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.name = "show_id"
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.full_name = ".m_daily_illusion_upgrade_toc.show_id"
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.number = 3
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.index = 2
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.label = 2
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.has_default_value = false
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.default_value = 0
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.type = 5
M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD.cpp_type = 1

M_DAILY_ILLUSION_UPGRADE_TOC.name = "m_daily_illusion_upgrade_toc"
M_DAILY_ILLUSION_UPGRADE_TOC.full_name = ".m_daily_illusion_upgrade_toc"
M_DAILY_ILLUSION_UPGRADE_TOC.nested_types = {}
M_DAILY_ILLUSION_UPGRADE_TOC.enum_types = {}
M_DAILY_ILLUSION_UPGRADE_TOC.fields = {M_DAILY_ILLUSION_UPGRADE_TOC_LEVEL_FIELD, M_DAILY_ILLUSION_UPGRADE_TOC_EXP_FIELD, M_DAILY_ILLUSION_UPGRADE_TOC_SHOW_ID_FIELD}
M_DAILY_ILLUSION_UPGRADE_TOC.is_extendable = false
M_DAILY_ILLUSION_UPGRADE_TOC.extensions = {}
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.name = "show"
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.full_name = ".m_daily_illusion_show_tos.show"
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.number = 1
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.index = 0
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.label = 2
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.has_default_value = false
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.default_value = false
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.type = 8
M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD.cpp_type = 7

M_DAILY_ILLUSION_SHOW_TOS.name = "m_daily_illusion_show_tos"
M_DAILY_ILLUSION_SHOW_TOS.full_name = ".m_daily_illusion_show_tos"
M_DAILY_ILLUSION_SHOW_TOS.nested_types = {}
M_DAILY_ILLUSION_SHOW_TOS.enum_types = {}
M_DAILY_ILLUSION_SHOW_TOS.fields = {M_DAILY_ILLUSION_SHOW_TOS_SHOW_FIELD}
M_DAILY_ILLUSION_SHOW_TOS.is_extendable = false
M_DAILY_ILLUSION_SHOW_TOS.extensions = {}
M_DAILY_ILLUSION_SHOW_TOC.name = "m_daily_illusion_show_toc"
M_DAILY_ILLUSION_SHOW_TOC.full_name = ".m_daily_illusion_show_toc"
M_DAILY_ILLUSION_SHOW_TOC.nested_types = {}
M_DAILY_ILLUSION_SHOW_TOC.enum_types = {}
M_DAILY_ILLUSION_SHOW_TOC.fields = {}
M_DAILY_ILLUSION_SHOW_TOC.is_extendable = false
M_DAILY_ILLUSION_SHOW_TOC.extensions = {}
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.name = "show_id"
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.full_name = ".m_daily_illusion_select_tos.show_id"
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.number = 1
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.index = 0
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.label = 2
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.has_default_value = false
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.default_value = 0
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.type = 5
M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD.cpp_type = 1

M_DAILY_ILLUSION_SELECT_TOS.name = "m_daily_illusion_select_tos"
M_DAILY_ILLUSION_SELECT_TOS.full_name = ".m_daily_illusion_select_tos"
M_DAILY_ILLUSION_SELECT_TOS.nested_types = {}
M_DAILY_ILLUSION_SELECT_TOS.enum_types = {}
M_DAILY_ILLUSION_SELECT_TOS.fields = {M_DAILY_ILLUSION_SELECT_TOS_SHOW_ID_FIELD}
M_DAILY_ILLUSION_SELECT_TOS.is_extendable = false
M_DAILY_ILLUSION_SELECT_TOS.extensions = {}
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.name = "show_id"
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.full_name = ".m_daily_illusion_select_toc.show_id"
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.number = 1
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.index = 0
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.label = 2
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.has_default_value = false
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.default_value = 0
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.type = 5
M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD.cpp_type = 1

M_DAILY_ILLUSION_SELECT_TOC.name = "m_daily_illusion_select_toc"
M_DAILY_ILLUSION_SELECT_TOC.full_name = ".m_daily_illusion_select_toc"
M_DAILY_ILLUSION_SELECT_TOC.nested_types = {}
M_DAILY_ILLUSION_SELECT_TOC.enum_types = {}
M_DAILY_ILLUSION_SELECT_TOC.fields = {M_DAILY_ILLUSION_SELECT_TOC_SHOW_ID_FIELD}
M_DAILY_ILLUSION_SELECT_TOC.is_extendable = false
M_DAILY_ILLUSION_SELECT_TOC.extensions = {}
P_DAILY_ID_FIELD.name = "id"
P_DAILY_ID_FIELD.full_name = ".p_daily.id"
P_DAILY_ID_FIELD.number = 1
P_DAILY_ID_FIELD.index = 0
P_DAILY_ID_FIELD.label = 2
P_DAILY_ID_FIELD.has_default_value = false
P_DAILY_ID_FIELD.default_value = 0
P_DAILY_ID_FIELD.type = 5
P_DAILY_ID_FIELD.cpp_type = 1

P_DAILY_PROGRESS_FIELD.name = "progress"
P_DAILY_PROGRESS_FIELD.full_name = ".p_daily.progress"
P_DAILY_PROGRESS_FIELD.number = 2
P_DAILY_PROGRESS_FIELD.index = 1
P_DAILY_PROGRESS_FIELD.label = 2
P_DAILY_PROGRESS_FIELD.has_default_value = false
P_DAILY_PROGRESS_FIELD.default_value = 0
P_DAILY_PROGRESS_FIELD.type = 5
P_DAILY_PROGRESS_FIELD.cpp_type = 1

P_DAILY.name = "p_daily"
P_DAILY.full_name = ".p_daily"
P_DAILY.nested_types = {}
P_DAILY.enum_types = {}
P_DAILY.fields = {P_DAILY_ID_FIELD, P_DAILY_PROGRESS_FIELD}
P_DAILY.is_extendable = false
P_DAILY.extensions = {}

m_daily_illusion_select_toc = protobuf.Message(M_DAILY_ILLUSION_SELECT_TOC)
m_daily_illusion_select_tos = protobuf.Message(M_DAILY_ILLUSION_SELECT_TOS)
m_daily_illusion_show_toc = protobuf.Message(M_DAILY_ILLUSION_SHOW_TOC)
m_daily_illusion_show_tos = protobuf.Message(M_DAILY_ILLUSION_SHOW_TOS)
m_daily_illusion_toc = protobuf.Message(M_DAILY_ILLUSION_TOC)
m_daily_illusion_tos = protobuf.Message(M_DAILY_ILLUSION_TOS)
m_daily_illusion_upgrade_toc = protobuf.Message(M_DAILY_ILLUSION_UPGRADE_TOC)
m_daily_illusion_upgrade_tos = protobuf.Message(M_DAILY_ILLUSION_UPGRADE_TOS)
m_daily_info_toc = protobuf.Message(M_DAILY_INFO_TOC)
m_daily_info_tos = protobuf.Message(M_DAILY_INFO_TOS)
m_daily_reward_toc = protobuf.Message(M_DAILY_REWARD_TOC)
m_daily_reward_tos = protobuf.Message(M_DAILY_REWARD_TOS)
m_daily_update_toc = protobuf.Message(M_DAILY_UPDATE_TOC)
p_daily = protobuf.Message(P_DAILY)

