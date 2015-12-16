#ifndef __GOPROCONTROL_H__
#define __GOPROCONTROL_H__

#define HTTP_HEADERS "Host: 10.5.5.9\r\n" \
    "Origin: http://synfin.net/\r\n" \
    "Connection: keep-alive\r\n" \
    "Accept: */*\r\n" \
    "User-Agent: GoProControl\r\n" \
    "Accept-Language: en-us\r\n" \
    "Referer: http://synfin.net/GoProControl\r\n" \
    "Accept-Encoding: gzip, deflate\r\n" \
    "\r\n"

#define GOPRO_ON "GET /bacpac/PW?t=%s&p=%01 HTTP/1.1\r\n"
#define GOPRO_OFF "GET /bacpac/PW?t=%s&p=%00 HTTP/1.1\r\n"
#define GOPRO_RECORD "GET /bacpac/SH?t=%s&p=%01 HTTP/1.1\r\n"
#define GOPRO_STOP "GET /bacpac/SH?t=%s&p=%00 HTTP/1.1\r\n"


#endif
