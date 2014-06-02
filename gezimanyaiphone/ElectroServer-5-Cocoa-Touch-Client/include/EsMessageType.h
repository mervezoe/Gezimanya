//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



enum EsMessageType {
	EsMessageType_CrossDomainRequest = 1,
	EsMessageType_CreateRoomRequest = 2,
	EsMessageType_JoinRoomRequest = 3,
	EsMessageType_LoginRequest = 4,
	EsMessageType_LogOutRequest = 5,
	EsMessageType_ValidateAdditionalLoginRequest = 6,
	EsMessageType_ValidateAdditionalLoginResponse = 7,
	EsMessageType_PublicMessageRequest = 8,
	EsMessageType_PrivateMessageRequest = 9,
	EsMessageType_LeaveRoomRequest = 10,
	EsMessageType_CreateRoomVariableRequest = 11,
	EsMessageType_DeleteRoomVariableRequest = 12,
	EsMessageType_UpdateRoomVariableRequest = 13,
	EsMessageType_GetZonesRequest = 14,
	EsMessageType_GetRoomsInZoneRequest = 15,
	EsMessageType_UpdateRoomDetailsRequest = 16,
	EsMessageType_AddRoomOperatorRequest = 17,
	EsMessageType_RemoveRoomOperatorRequest = 18,
	EsMessageType_FindZoneAndRoomByNameRequest = 19,
	EsMessageType_GetUsersInRoomRequest = 20,
	EsMessageType_DeleteUserVariableRequest = 21,
	EsMessageType_UpdateUserVariableRequest = 22,
	EsMessageType_AddBuddiesRequest = 23,
	EsMessageType_RemoveBuddiesRequest = 24,
	EsMessageType_EvictUserFromRoomRequest = 25,
	EsMessageType_GetUserCountRequest = 26,
	EsMessageType_PluginRequest = 27,
	EsMessageType_CreateOrJoinGameRequest = 28,
	EsMessageType_JoinGameRequest = 29,
	EsMessageType_FindGamesRequest = 30,
	EsMessageType_GetUserVariablesRequest = 31,
	EsMessageType_AggregatePluginRequest = 32,
	EsMessageType_GetServerLocalTimeRequest = 33,
	EsMessageType_ConnectionResponse = 34,
	EsMessageType_CrossDomainResponse = 35,
	EsMessageType_LoginResponse = 36,
	EsMessageType_GetZonesResponse = 37,
	EsMessageType_GetRoomsInZoneResponse = 38,
	EsMessageType_GenericErrorResponse = 39,
	EsMessageType_FindZoneAndRoomByNameResponse = 40,
	EsMessageType_GetUsersInRoomResponse = 41,
	EsMessageType_GetUserCountResponse = 42,
	EsMessageType_CreateOrJoinGameResponse = 43,
	EsMessageType_FindGamesResponse = 44,
	EsMessageType_GetUserVariablesResponse = 45,
	EsMessageType_AddBuddiesResponse = 46,
	EsMessageType_RemoveBuddiesResponse = 47,
	EsMessageType_GetServerLocalTimeResponse = 48,
	EsMessageType_PublicMessageEvent = 49,
	EsMessageType_PrivateMessageEvent = 50,
	EsMessageType_SessionIdleEvent = 51,
	EsMessageType_JoinRoomEvent = 52,
	EsMessageType_JoinZoneEvent = 53,
	EsMessageType_UserUpdateEvent = 54,
	EsMessageType_ZoneUpdateEvent = 55,
	EsMessageType_LeaveRoomEvent = 56,
	EsMessageType_LeaveZoneEvent = 57,
	EsMessageType_RoomVariableUpdateEvent = 58,
	EsMessageType_UpdateRoomDetailsEvent = 59,
	EsMessageType_BuddyStatusUpdatedEvent = 60,
	EsMessageType_UserEvictedFromRoomEvent = 61,
	EsMessageType_UserVariableUpdateEvent = 62,
	EsMessageType_PluginMessageEvent = 63,
	EsMessageType_AggregatePluginMessageEvent = 64,
	EsMessageType_RegistryConnectToPreferredGatewayRequest = 65,
	EsMessageType_DisconnectedEvent = 66,
	EsMessageType_GatewayStartupExceptionsMessage = 67,
	EsMessageType_RegistryLoginResponse = 68,
	EsMessageType_RegistryConnectionResponse = 69,
	EsMessageType_GatewayKickUserRequest = 70,
	EsMessageType_ServerKickUserEvent = 71,
	EsMessageType_UdpBackchannelEvent = 72,
	EsMessageType_Unknown = 73,
	EsMessageType_RtmpPlayVideo = 74,
	EsMessageType_RtmpEventResponse = 75,
	EsMessageType_RtmpRecordVideo = 76,
	EsMessageType_RtmpPublishVideo = 77,
	EsMessageType_RtmpUnpublishVideo = 78,
	EsMessageType_RtmpAppendVideo = 79,
	EsMessageType_RtmpStreamingStart = 80,
	EsMessageType_RtmpStreamingStop = 81,
	EsMessageType_DHInitiate = 82,
	EsMessageType_DHPublicNumbers = 83,
	EsMessageType_DHSharedModulusRequest = 84,
	EsMessageType_DHSharedModulusResponse = 85,
	EsMessageType_EncryptionStateChange = 86,
	EsMessageType_ConnectionAttemptResponse = 87,
	EsMessageType_ConnectionClosedEvent = 88,
	EsMessageType_RegisterUDPConnectionRequest = 89,
	EsMessageType_RegisterUDPConnectionResponse = 90,
	EsMessageType_RemoveUDPConnectionRequest = 91,
	EsMessageType_RemoveUDPConnectionResponse = 92,
	EsMessageType_PingRequest = 93,
	EsMessageType_PingResponse = 94,
	EsMessageType_IdleTimeoutWarningEvent = 95,
	EsMessageType_MarkGatewayClientLoggedInMessage = 96,
};

@interface EsMessageTypeConstants : NSObject {
}
@end
