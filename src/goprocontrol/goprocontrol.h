#ifndef __GOPROCONTROL_H__
#define __GOPROCONTROL_H__

#define GOPRO_ON "http://10.5.5.9/bacpac/PW?t=%s&p=\%01 HTTP/1.1\r\n"
#define GOPRO_OFF "http://10.5.5.9/bacpac/PW?t=%s&p=\%00 HTTP/1.1\r\n"
#define GOPRO_RECORD "http://10.5.5.9/bacpac/SH?t=%s&p=\%01 HTTP/1.1\r\n"
#define GOPRO_STOP "http://10.5.5.9/bacpac/SH?t=%s&p=\%00 HTTP/1.1\r\n"


#endif
