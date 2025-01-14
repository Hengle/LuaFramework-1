-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "tolua.protobuf/protobuf"
require("proto/pb_comm_pb")
local pb_comm_pb = pb_comm_pb
module('pb_1133_dating_pb')


M_DATING_HALL_TOS = protobuf.Descriptor();
M_DATING_HALL_TOS_PAGE_FIELD = protobuf.FieldDescriptor();
M_DATING_HALL_TOC = protobuf.Descriptor();
M_DATING_HALL_TOC_MINE_FIELD = protobuf.FieldDescriptor();
M_DATING_HALL_TOC_LIST_FIELD = protobuf.FieldDescriptor();
M_DATING_HALL_TOC_PAGE_FIELD = protobuf.FieldDescriptor();
M_DATING_TAG_TOS = protobuf.Descriptor();
M_DATING_TAG_TOS_TAGS_FIELD = protobuf.FieldDescriptor();
M_DATING_TAG_TOC = protobuf.Descriptor();
M_DATING_TAG_TOC_TAGS_FIELD = protobuf.FieldDescriptor();
M_DATING_FLIRT_TOS = protobuf.Descriptor();
M_DATING_FLIRT_TOS_ROLE_ID_FIELD = protobuf.FieldDescriptor();
M_DATING_FLIRT_TOC = protobuf.Descriptor();
M_DATING_MATCH_TOS = protobuf.Descriptor();
M_DATING_MATCH_TOC = protobuf.Descriptor();
M_DATING_MATCH_TOC_ROLE_FIELD = protobuf.FieldDescriptor();
P_DATING = protobuf.Descriptor();
P_DATING_FLOWERSENTRY = protobuf.Descriptor();
P_DATING_FLOWERSENTRY_KEY_FIELD = protobuf.FieldDescriptor();
P_DATING_FLOWERSENTRY_VALUE_FIELD = protobuf.FieldDescriptor();
P_DATING_BASE_FIELD = protobuf.FieldDescriptor();
P_DATING_TAGS_FIELD = protobuf.FieldDescriptor();
P_DATING_FLIRTED_FIELD = protobuf.FieldDescriptor();
P_DATING_FLOWERS_FIELD = protobuf.FieldDescriptor();

M_DATING_HALL_TOS_PAGE_FIELD.name = "page"
M_DATING_HALL_TOS_PAGE_FIELD.full_name = ".m_dating_hall_tos.page"
M_DATING_HALL_TOS_PAGE_FIELD.number = 1
M_DATING_HALL_TOS_PAGE_FIELD.index = 0
M_DATING_HALL_TOS_PAGE_FIELD.label = 2
M_DATING_HALL_TOS_PAGE_FIELD.has_default_value = false
M_DATING_HALL_TOS_PAGE_FIELD.default_value = 0
M_DATING_HALL_TOS_PAGE_FIELD.type = 5
M_DATING_HALL_TOS_PAGE_FIELD.cpp_type = 1

M_DATING_HALL_TOS.name = "m_dating_hall_tos"
M_DATING_HALL_TOS.full_name = ".m_dating_hall_tos"
M_DATING_HALL_TOS.nested_types = {}
M_DATING_HALL_TOS.enum_types = {}
M_DATING_HALL_TOS.fields = {M_DATING_HALL_TOS_PAGE_FIELD}
M_DATING_HALL_TOS.is_extendable = false
M_DATING_HALL_TOS.extensions = {}
M_DATING_HALL_TOC_MINE_FIELD.name = "mine"
M_DATING_HALL_TOC_MINE_FIELD.full_name = ".m_dating_hall_toc.mine"
M_DATING_HALL_TOC_MINE_FIELD.number = 1
M_DATING_HALL_TOC_MINE_FIELD.index = 0
M_DATING_HALL_TOC_MINE_FIELD.label = 2
M_DATING_HALL_TOC_MINE_FIELD.has_default_value = false
M_DATING_HALL_TOC_MINE_FIELD.default_value = nil
M_DATING_HALL_TOC_MINE_FIELD.message_type = P_DATING
M_DATING_HALL_TOC_MINE_FIELD.type = 11
M_DATING_HALL_TOC_MINE_FIELD.cpp_type = 10

M_DATING_HALL_TOC_LIST_FIELD.name = "list"
M_DATING_HALL_TOC_LIST_FIELD.full_name = ".m_dating_hall_toc.list"
M_DATING_HALL_TOC_LIST_FIELD.number = 2
M_DATING_HALL_TOC_LIST_FIELD.index = 1
M_DATING_HALL_TOC_LIST_FIELD.label = 3
M_DATING_HALL_TOC_LIST_FIELD.has_default_value = false
M_DATING_HALL_TOC_LIST_FIELD.default_value = {}
M_DATING_HALL_TOC_LIST_FIELD.message_type = P_DATING
M_DATING_HALL_TOC_LIST_FIELD.type = 11
M_DATING_HALL_TOC_LIST_FIELD.cpp_type = 10

M_DATING_HALL_TOC_PAGE_FIELD.name = "page"
M_DATING_HALL_TOC_PAGE_FIELD.full_name = ".m_dating_hall_toc.page"
M_DATING_HALL_TOC_PAGE_FIELD.number = 3
M_DATING_HALL_TOC_PAGE_FIELD.index = 2
M_DATING_HALL_TOC_PAGE_FIELD.label = 2
M_DATING_HALL_TOC_PAGE_FIELD.has_default_value = false
M_DATING_HALL_TOC_PAGE_FIELD.default_value = 0
M_DATING_HALL_TOC_PAGE_FIELD.type = 5
M_DATING_HALL_TOC_PAGE_FIELD.cpp_type = 1

M_DATING_HALL_TOC.name = "m_dating_hall_toc"
M_DATING_HALL_TOC.full_name = ".m_dating_hall_toc"
M_DATING_HALL_TOC.nested_types = {}
M_DATING_HALL_TOC.enum_types = {}
M_DATING_HALL_TOC.fields = {M_DATING_HALL_TOC_MINE_FIELD, M_DATING_HALL_TOC_LIST_FIELD, M_DATING_HALL_TOC_PAGE_FIELD}
M_DATING_HALL_TOC.is_extendable = false
M_DATING_HALL_TOC.extensions = {}
M_DATING_TAG_TOS_TAGS_FIELD.name = "tags"
M_DATING_TAG_TOS_TAGS_FIELD.full_name = ".m_dating_tag_tos.tags"
M_DATING_TAG_TOS_TAGS_FIELD.number = 1
M_DATING_TAG_TOS_TAGS_FIELD.index = 0
M_DATING_TAG_TOS_TAGS_FIELD.label = 3
M_DATING_TAG_TOS_TAGS_FIELD.has_default_value = false
M_DATING_TAG_TOS_TAGS_FIELD.default_value = {}
M_DATING_TAG_TOS_TAGS_FIELD.type = 5
M_DATING_TAG_TOS_TAGS_FIELD.cpp_type = 1

M_DATING_TAG_TOS.name = "m_dating_tag_tos"
M_DATING_TAG_TOS.full_name = ".m_dating_tag_tos"
M_DATING_TAG_TOS.nested_types = {}
M_DATING_TAG_TOS.enum_types = {}
M_DATING_TAG_TOS.fields = {M_DATING_TAG_TOS_TAGS_FIELD}
M_DATING_TAG_TOS.is_extendable = false
M_DATING_TAG_TOS.extensions = {}
M_DATING_TAG_TOC_TAGS_FIELD.name = "tags"
M_DATING_TAG_TOC_TAGS_FIELD.full_name = ".m_dating_tag_toc.tags"
M_DATING_TAG_TOC_TAGS_FIELD.number = 1
M_DATING_TAG_TOC_TAGS_FIELD.index = 0
M_DATING_TAG_TOC_TAGS_FIELD.label = 3
M_DATING_TAG_TOC_TAGS_FIELD.has_default_value = false
M_DATING_TAG_TOC_TAGS_FIELD.default_value = {}
M_DATING_TAG_TOC_TAGS_FIELD.type = 5
M_DATING_TAG_TOC_TAGS_FIELD.cpp_type = 1

M_DATING_TAG_TOC.name = "m_dating_tag_toc"
M_DATING_TAG_TOC.full_name = ".m_dating_tag_toc"
M_DATING_TAG_TOC.nested_types = {}
M_DATING_TAG_TOC.enum_types = {}
M_DATING_TAG_TOC.fields = {M_DATING_TAG_TOC_TAGS_FIELD}
M_DATING_TAG_TOC.is_extendable = false
M_DATING_TAG_TOC.extensions = {}
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.name = "role_id"
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.full_name = ".m_dating_flirt_tos.role_id"
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.number = 1
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.index = 0
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.label = 2
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.has_default_value = false
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.default_value = 0
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.type = 6
M_DATING_FLIRT_TOS_ROLE_ID_FIELD.cpp_type = 4

M_DATING_FLIRT_TOS.name = "m_dating_flirt_tos"
M_DATING_FLIRT_TOS.full_name = ".m_dating_flirt_tos"
M_DATING_FLIRT_TOS.nested_types = {}
M_DATING_FLIRT_TOS.enum_types = {}
M_DATING_FLIRT_TOS.fields = {M_DATING_FLIRT_TOS_ROLE_ID_FIELD}
M_DATING_FLIRT_TOS.is_extendable = false
M_DATING_FLIRT_TOS.extensions = {}
M_DATING_FLIRT_TOC.name = "m_dating_flirt_toc"
M_DATING_FLIRT_TOC.full_name = ".m_dating_flirt_toc"
M_DATING_FLIRT_TOC.nested_types = {}
M_DATING_FLIRT_TOC.enum_types = {}
M_DATING_FLIRT_TOC.fields = {}
M_DATING_FLIRT_TOC.is_extendable = false
M_DATING_FLIRT_TOC.extensions = {}
M_DATING_MATCH_TOS.name = "m_dating_match_tos"
M_DATING_MATCH_TOS.full_name = ".m_dating_match_tos"
M_DATING_MATCH_TOS.nested_types = {}
M_DATING_MATCH_TOS.enum_types = {}
M_DATING_MATCH_TOS.fields = {}
M_DATING_MATCH_TOS.is_extendable = false
M_DATING_MATCH_TOS.extensions = {}
M_DATING_MATCH_TOC_ROLE_FIELD.name = "role"
M_DATING_MATCH_TOC_ROLE_FIELD.full_name = ".m_dating_match_toc.role"
M_DATING_MATCH_TOC_ROLE_FIELD.number = 1
M_DATING_MATCH_TOC_ROLE_FIELD.index = 0
M_DATING_MATCH_TOC_ROLE_FIELD.label = 2
M_DATING_MATCH_TOC_ROLE_FIELD.has_default_value = false
M_DATING_MATCH_TOC_ROLE_FIELD.default_value = nil
M_DATING_MATCH_TOC_ROLE_FIELD.message_type = pb_comm_pb.P_ROLE_BASE
M_DATING_MATCH_TOC_ROLE_FIELD.type = 11
M_DATING_MATCH_TOC_ROLE_FIELD.cpp_type = 10

M_DATING_MATCH_TOC.name = "m_dating_match_toc"
M_DATING_MATCH_TOC.full_name = ".m_dating_match_toc"
M_DATING_MATCH_TOC.nested_types = {}
M_DATING_MATCH_TOC.enum_types = {}
M_DATING_MATCH_TOC.fields = {M_DATING_MATCH_TOC_ROLE_FIELD}
M_DATING_MATCH_TOC.is_extendable = false
M_DATING_MATCH_TOC.extensions = {}
P_DATING_FLOWERSENTRY_KEY_FIELD.name = "key"
P_DATING_FLOWERSENTRY_KEY_FIELD.full_name = ".p_dating.FlowersEntry.key"
P_DATING_FLOWERSENTRY_KEY_FIELD.number = 1
P_DATING_FLOWERSENTRY_KEY_FIELD.index = 0
P_DATING_FLOWERSENTRY_KEY_FIELD.label = 1
P_DATING_FLOWERSENTRY_KEY_FIELD.has_default_value = false
P_DATING_FLOWERSENTRY_KEY_FIELD.default_value = 0
P_DATING_FLOWERSENTRY_KEY_FIELD.type = 5
P_DATING_FLOWERSENTRY_KEY_FIELD.cpp_type = 1

P_DATING_FLOWERSENTRY_VALUE_FIELD.name = "value"
P_DATING_FLOWERSENTRY_VALUE_FIELD.full_name = ".p_dating.FlowersEntry.value"
P_DATING_FLOWERSENTRY_VALUE_FIELD.number = 2
P_DATING_FLOWERSENTRY_VALUE_FIELD.index = 1
P_DATING_FLOWERSENTRY_VALUE_FIELD.label = 1
P_DATING_FLOWERSENTRY_VALUE_FIELD.has_default_value = false
P_DATING_FLOWERSENTRY_VALUE_FIELD.default_value = 0
P_DATING_FLOWERSENTRY_VALUE_FIELD.type = 5
P_DATING_FLOWERSENTRY_VALUE_FIELD.cpp_type = 1

P_DATING_FLOWERSENTRY.name = "FlowersEntry"
P_DATING_FLOWERSENTRY.full_name = ".p_dating.FlowersEntry"
P_DATING_FLOWERSENTRY.nested_types = {}
P_DATING_FLOWERSENTRY.enum_types = {}
P_DATING_FLOWERSENTRY.fields = {P_DATING_FLOWERSENTRY_KEY_FIELD, P_DATING_FLOWERSENTRY_VALUE_FIELD}
P_DATING_FLOWERSENTRY.is_extendable = false
P_DATING_FLOWERSENTRY.extensions = {}
P_DATING_FLOWERSENTRY.containing_type = P_DATING
P_DATING_BASE_FIELD.name = "base"
P_DATING_BASE_FIELD.full_name = ".p_dating.base"
P_DATING_BASE_FIELD.number = 1
P_DATING_BASE_FIELD.index = 0
P_DATING_BASE_FIELD.label = 2
P_DATING_BASE_FIELD.has_default_value = false
P_DATING_BASE_FIELD.default_value = nil
P_DATING_BASE_FIELD.message_type = pb_comm_pb.P_ROLE_BASE
P_DATING_BASE_FIELD.type = 11
P_DATING_BASE_FIELD.cpp_type = 10

P_DATING_TAGS_FIELD.name = "tags"
P_DATING_TAGS_FIELD.full_name = ".p_dating.tags"
P_DATING_TAGS_FIELD.number = 2
P_DATING_TAGS_FIELD.index = 1
P_DATING_TAGS_FIELD.label = 3
P_DATING_TAGS_FIELD.has_default_value = false
P_DATING_TAGS_FIELD.default_value = {}
P_DATING_TAGS_FIELD.type = 5
P_DATING_TAGS_FIELD.cpp_type = 1

P_DATING_FLIRTED_FIELD.name = "flirted"
P_DATING_FLIRTED_FIELD.full_name = ".p_dating.flirted"
P_DATING_FLIRTED_FIELD.number = 3
P_DATING_FLIRTED_FIELD.index = 2
P_DATING_FLIRTED_FIELD.label = 2
P_DATING_FLIRTED_FIELD.has_default_value = false
P_DATING_FLIRTED_FIELD.default_value = 0
P_DATING_FLIRTED_FIELD.type = 5
P_DATING_FLIRTED_FIELD.cpp_type = 1

P_DATING_FLOWERS_FIELD.name = "flowers"
P_DATING_FLOWERS_FIELD.full_name = ".p_dating.flowers"
P_DATING_FLOWERS_FIELD.number = 4
P_DATING_FLOWERS_FIELD.index = 3
P_DATING_FLOWERS_FIELD.label = 3
P_DATING_FLOWERS_FIELD.has_default_value = false
P_DATING_FLOWERS_FIELD.default_value = {}
P_DATING_FLOWERS_FIELD.message_type = P_DATING_FLOWERSENTRY
P_DATING_FLOWERS_FIELD.type = 11
P_DATING_FLOWERS_FIELD.cpp_type = 10

P_DATING.name = "p_dating"
P_DATING.full_name = ".p_dating"
P_DATING.nested_types = {P_DATING_FLOWERSENTRY}
P_DATING.enum_types = {}
P_DATING.fields = {P_DATING_BASE_FIELD, P_DATING_TAGS_FIELD, P_DATING_FLIRTED_FIELD, P_DATING_FLOWERS_FIELD}
P_DATING.is_extendable = false
P_DATING.extensions = {}

m_dating_flirt_toc = protobuf.Message(M_DATING_FLIRT_TOC)
m_dating_flirt_tos = protobuf.Message(M_DATING_FLIRT_TOS)
m_dating_hall_toc = protobuf.Message(M_DATING_HALL_TOC)
m_dating_hall_tos = protobuf.Message(M_DATING_HALL_TOS)
m_dating_match_toc = protobuf.Message(M_DATING_MATCH_TOC)
m_dating_match_tos = protobuf.Message(M_DATING_MATCH_TOS)
m_dating_tag_toc = protobuf.Message(M_DATING_TAG_TOC)
m_dating_tag_tos = protobuf.Message(M_DATING_TAG_TOS)
p_dating = protobuf.Message(P_DATING)
p_dating.FlowersEntry = protobuf.Message(P_DATING_FLOWERSENTRY)

