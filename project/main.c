#include "libavutil/avutil.h"
#include "libavformat/avformat.h"
#include <stdio.h>

int main(int argc, char** argv) {


    if (argc != 2)
    {
        printf("the invalid argument\n");
        return -1;
    }

    int ret = 0;
    const char* url = argv[1];

    avformat_network_init();
    av_register_all();

    AVFormatContext *avformat_context = avformat_alloc_context();

    ret = avformat_open_input(&avformat_context, url, NULL, NULL);
    if (ret < 0 ) {
        av_free(avformat_context);
        printf("cannot open url: >>>%s<<<\n", url);
        return -1;
    }

    ret = avformat_find_stream_info(avformat_context, NULL);
    int64_t duration_in_seconds = avformat_context->duration / 1000000;
    printf("duration: %lld\n", duration_in_seconds);

    /* any bugs should be fixed ? */
    // avformat_close_input(&avformat_context);

}
