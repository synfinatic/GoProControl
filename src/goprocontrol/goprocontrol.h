#ifndef __GOPROCONTROL_H__
#define __GOPROCONTROL_H__

#define GPIO         2 // GPIO2
#define HTTP_CODE_OK 200
#define GOPRO_HOST   "10.5.5.9"
#define GOPRO_PORT   80
#define GOPRO_ON     "/bacpac/PW?t=%s&p=%%01"
#define GOPRO_OFF    "/bacpac/PW?t=%s&p=%%00"
#define GOPRO_RECORD "/bacpac/SH?t=%s&p=%%01"
#define GOPRO_STOP   "/bacpac/SH?t=%s&p=%%00"

#endif
