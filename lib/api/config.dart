const HOST = "application-taxify2.com";
const PROTOCOL = "https";
const BASE_API_ENDPOINT = "iqsaat/api";
const API_URL = "$PROTOCOL://$HOST/$BASE_API_ENDPOINT";
const LOCATION_SOCKET_URL = "$PROTOCOL://$HOST/location";
const CHAT_SOCKET_URL = "$PROTOCOL://$HOST/chat";
const JOB_SOCKET_URL = "$PROTOCOL://$HOST/ride";
const INACTIVITY_TIMEOUT = const Duration(minutes: 15);