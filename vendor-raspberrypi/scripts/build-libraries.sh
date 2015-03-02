VERSION=n1.2.5
wget https://github.com/FFmpeg/FFmpeg/archive/$VERSION.zip -O /opt/$VERSION.zip
unzip -d /opt /opt/$VERSION.zip
ln -s /opt/FFmpeg-$VERSION /opt/FFmpegSource

cd /opt/FFmpegSource

PREFIX=/opt/raspberrypi
MY_PREFIX=/opt/toolchain/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-
MY_CC=$MY_PREFIX"gcc"
MY_NM=$MY_PREFIX"nm"
MY_AR=$MY_PREFIX"ar"
MY_RANLIB=$MY_PREFIX"ranlib"
MY_LD=$MY_PREFIX"ld"

./configure --target-os=linux \
    --prefix=$PREFIX \
    --enable-cross-compile \
    --sysroot=/opt/toolchain/arm-bcm2708/arm-bcm2708hardfp-linux-gnueabi/arm-bcm2708hardfp-linux-gnueabi/sysroot \
    --arch=arm \
    --disable-neon \
    --cc=$MY_CC \
    --ar=$MY_AR \
    --ld=$MY_LD \
    --cross-prefix=$MY_PREFIX \
    --nm=$MY_NM \
    --disable-doc \
    --enable-parsers \
    --disable-encoders \
    --enable-decoders \
    --disable-muxers \
    --enable-demuxers \
    --enable-swscale  \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-ffmpeg \
    --disable-avdevice \
    --disable-postproc \
    --disable-avfilter \
    --disable-filters \
    --enable-network \
    --disable-indevs \
    --disable-bsfs \
    --enable-asm \
    --disable-decoder=aasc \
    --disable-decoder=alac \
    --disable-decoder=als \
    --disable-decoder=amrnb \
    --disable-decoder=amrwb \
    --disable-decoder=amv \
    --disable-decoder=anm \
    --disable-decoder=ansi \
    --disable-decoder=ape \
    --disable-decoder=ass \
    --disable-decoder=asv1 \
    --disable-decoder=asv2 \
    --disable-decoder=atrac1 \
    --disable-decoder=atrac3 \
    --disable-decoder=aura \
    --disable-decoder=aura2 \
    --disable-decoder=avs \
    --disable-decoder=bethsoftvid \
    --disable-decoder=bfi \
    --disable-decoder=bink \
    --disable-decoder=binkaudio_dct \
    --disable-decoder=binkaudio_rdft \
    --disable-decoder=cavs \
    --disable-decoder=cdgraphics \
    --disable-decoder=cinepak \
    --disable-decoder=cljr \
    --disable-decoder=cook \
    --disable-decoder=cscd \
    --disable-decoder=cyuv \
    --disable-decoder=dca \
    --disable-decoder=dfa \
    --disable-decoder=dnxhd \
    --disable-decoder=dpx \
    --disable-decoder=dsicinaudio \
    --disable-decoder=dsicinvideo \
    --disable-decoder=dvbsub \
    --disable-decoder=dvdsub \
    --disable-decoder=dvvideo \
    --disable-decoder=dxa \
    --disable-decoder=eac3 \
    --disable-decoder=eacmv \
    --disable-decoder=eamad \
    --disable-decoder=eatgq \
    --disable-decoder=eatgv \
    --disable-decoder=eatqi \
    --disable-decoder=eightbps \
    --disable-decoder=eightsvx_exp \
    --disable-decoder=eightsvx_fib \
    --disable-decoder=escape124 \
    --disable-decoder=ffv1 \
    --disable-decoder=ffvhuff \
    --disable-decoder=flac \
    --disable-decoder=flashsv \
    --disable-decoder=flic \
    --disable-decoder=fourxm \
    --disable-decoder=fraps \
    --disable-decoder=frwu \
    --disable-decoder=gif \
    --disable-decoder=gsm \
    --disable-decoder=gsm_ms \
    --disable-decoder=huffyuv \
    --disable-decoder=idcin \
    --disable-decoder=iff_byterun1 \
    --disable-decoder=iff_ilbm \
    --disable-decoder=imc \
    --disable-decoder=indeo2 \
    --disable-decoder=indeo3 \
    --disable-decoder=indeo5 \
    --disable-decoder=interplay_video \
    --disable-decoder=jpeg2000 \
    --disable-decoder=jpegls \
    --disable-decoder=jv \
    --disable-decoder=kgv1 \
    --disable-decoder=lagarith \
    --disable-decoder=loco \
    --disable-decoder=mace3 \
    --disable-decoder=mace6 \
    --disable-decoder=mdec \
    --disable-decoder=mjpeg \
    --disable-decoder=mjpegb \
    --disable-decoder=mlp \
    --disable-decoder=mmvideo \
    --disable-decoder=motionpixels \
    --disable-decoder=msrle \
    --disable-decoder=msvideo1 \
    --disable-decoder=mszh \
    --disable-decoder=mxpeg \
    --disable-decoder=nellymoser \
    --disable-decoder=nuv \
    --disable-decoder=pam \
    --disable-decoder=pbm \
    --disable-decoder=pcx \
    --disable-decoder=pgm \
    --disable-decoder=pgmyuv \
    --disable-decoder=pgssub \
    --disable-decoder=pictor \
    --disable-decoder=png \
    --disable-decoder=ppm \
    --disable-decoder=qcelp \
    --disable-decoder=qdm2 \
    --disable-decoder=qdraw \
    --disable-decoder=qpeg \
    --disable-decoder=qtrle \
    --disable-decoder=r10k \
    --disable-decoder=r210 \
    --disable-decoder=ra_144 \
    --disable-decoder=ra_288 \
    --disable-decoder=rawvideo \
    --disable-decoder=rl2 \
    --disable-decoder=roq \
    --disable-decoder=rpza \
    --disable-decoder=rv10 \
    --disable-decoder=rv20 \
    --disable-decoder=rv30 \
    --disable-decoder=rv40 \
    --disable-decoder=s302m \
    --disable-decoder=sgi \
    --disable-decoder=shorten \
    --disable-decoder=sipr \
    --disable-decoder=smackaud \
    --disable-decoder=smacker \
    --disable-decoder=smc \
    --disable-decoder=snow \
    --disable-decoder=sonic \
    --disable-decoder=sp5x \
    --disable-decoder=srt \
    --disable-decoder=sunrast \
    --disable-decoder=svq1 \
    --disable-decoder=svq3 \
    --disable-decoder=targa \
    --disable-decoder=theora \
    --disable-decoder=thp \
    --disable-decoder=tiertexseqvideo \
    --disable-decoder=tiff \
    --disable-decoder=tmv \
    --disable-decoder=truehd \
    --disable-decoder=truemotion1 \
    --disable-decoder=truemotion2 \
    --disable-decoder=truespeech \
    --disable-decoder=tscc \
    --disable-decoder=tta \
    --disable-decoder=twinvq \
    --disable-decoder=txd \
    --disable-decoder=ulti \
    --disable-decoder=v210 \
    --disable-decoder=v210x \
    --disable-decoder=vb \
    --disable-decoder=vmdaudio \
    --disable-decoder=vmdvideo \
    --disable-decoder=vmnc \
    --disable-decoder=vorbis \
    --disable-decoder=vp3 \
    --disable-decoder=vp5 \
    --disable-decoder=vp6 \
    --disable-decoder=vp6a \
    --disable-decoder=vp6f \
    --disable-decoder=vp8 \
    --disable-decoder=vqa \
    --disable-decoder=wavpack \
    --disable-decoder=wnv1 \
    --disable-decoder=ws_snd1 \
    --disable-decoder=xan_wc3 \
    --disable-decoder=xan_wc4 \
    --disable-decoder=xl \
    --disable-decoder=xsub \
    --disable-decoder=yop \
    --disable-decoder=zlib \
    --disable-decoder=zmbv \
    --disable-decoder=vcr1 \
    --disable-decoder=h261 \
    --disable-decoder=h264 \
    --disable-demuxer=h261 \
    --disable-demuxer=h264 \
    --disable-demuxer=aea \
    --disable-demuxer=aiff \
    --disable-demuxer=amr \
    --disable-demuxer=anm \
    --disable-demuxer=apc \
    --disable-demuxer=ape \
    --disable-demuxer=au \
    --disable-demuxer=avi \
    --disable-demuxer=avs \
    --disable-demuxer=bethsoftvid \
    --disable-demuxer=bfi \
    --disable-demuxer=bink \
    --disable-demuxer=c93 \
    --disable-demuxer=caf \
    --disable-demuxer=cavsvideo \
    --disable-demuxer=cdg \
    --disable-demuxer=daud \
    --disable-demuxer=dfa \
    --disable-demuxer=dirac \
    --disable-decoder=dirac \
    --disable-demuxer=dnxhd \
    --disable-demuxer=dsicin \
    --disable-demuxer=dts \
    --disable-demuxer=dv \
    --disable-demuxer=dxa \
    --disable-demuxer=ea \
    --disable-demuxer=ea_cdata \
    --disable-demuxer=eac3 \
    --disable-demuxer=ffm \
    --disable-demuxer=ffmetadata \
    --disable-demuxer=filmstrip \
    --disable-demuxer=flac \
    --disable-demuxer=flic \
    --disable-demuxer=g722 \
    --disable-demuxer=gsm \
    --disable-demuxer=gxf \
    --disable-demuxer=idcin \
    --disable-demuxer=iff \
    --disable-demuxer=image2 \
    --disable-demuxer=image2pipe \
    --disable-demuxer=ingenient \
    --disable-demuxer=ipmovie \
    --disable-demuxer=iss \
    --disable-demuxer=iv8 \
    --disable-demuxer=ivf \
    --disable-demuxer=jv \
    --disable-demuxer=lmlm4 \
    --disable-demuxer=lxf \
    --disable-demuxer=m4v \
    --disable-demuxer=matroska \
    --disable-demuxer=microdvd \
    --disable-demuxer=mjpeg \
    --disable-demuxer=mlp \
    --disable-demuxer=mm \
    --disable-demuxer=mmf \
    --disable-demuxer=mov \
    --disable-demuxer=msnwc_tcp \
    --disable-demuxer=mtv \
    --disable-demuxer=mvi \
    --disable-demuxer=mxf \
    --disable-demuxer=mxg \
    --disable-demuxer=nc \
    --disable-demuxer=nsv \
    --disable-demuxer=nut \
    --disable-demuxer=nuv \
    --disable-demuxer=ogg \
    --disable-demuxer=oma \
    --disable-demuxer=pva \
    --disable-demuxer=qcp \
    --disable-demuxer=r3d \
    --disable-demuxer=rawvideo \
    --disable-demuxer=rl2 \
    --disable-demuxer=rm \
    --disable-demuxer=roq \
    --disable-demuxer=rpl \
    --disable-demuxer=rso \
    --disable-demuxer=sap \
    --disable-demuxer=sdp \
    --disable-demuxer=segafilm \
    --disable-demuxer=shorten \
    --disable-demuxer=siff \
    --disable-demuxer=smacker \
    --disable-demuxer=sol \
    --disable-demuxer=sox \
    --disable-demuxer=spdif \
    --disable-demuxer=srt \
    --disable-demuxer=str \
    --disable-demuxer=swf \
    --disable-demuxer=thp \
    --disable-demuxer=tiertexseq \
    --disable-demuxer=tmv \
    --disable-demuxer=truehd \
    --disable-demuxer=tta \
    --disable-demuxer=tty \
    --disable-demuxer=txd \
    --disable-demuxer=vmd \
    --disable-demuxer=vqf \
    --disable-demuxer=w64 \
    --disable-demuxer=wav \
    --disable-demuxer=wc3 \
    --disable-demuxer=wsaud \
    --disable-demuxer=wsvqa \
    --disable-demuxer=wtv \
    --disable-demuxer=wv \
    --disable-demuxer=xa \
    --disable-demuxer=yop \
    --disable-protocol=applehttp \
    --disable-protocol=md5 \
    --disable-protocol=rtmps \
    --disable-protocol=concat \
    --disable-protocol=rtmpt \
    --disable-protocol=rtmpte \
    --disable-protocol=pipe \
    --disable-protocol=rtp \
    --disable-protocol=gopher \
    --disable-protocol=rtmp \
    --disable-protocol=rtmpe \
    --disable-protocol=udp \
    --disable-protocol=crypto \
    --disable-decoder=adpcm_4xm \
    --disable-decoder=adpcm_adx \
    --disable-decoder=adpcm_ct \
    --disable-decoder=adpcm_ea \
    --disable-decoder=adpcm_ea_maxis_xa \
    --disable-decoder=adpcm_ea_r1 \
    --disable-decoder=adpcm_ea_r2 \
    --disable-decoder=adpcm_ea_r3 \
    --disable-decoder=adpcm_ea_xas \
    --disable-decoder=adpcm_g722 \
    --disable-decoder=adpcm_g726 \
    --disable-decoder=adpcm_ima_amv \
    --disable-decoder=adpcm_ima_dk3 \
    --disable-decoder=adpcm_ima_dk4 \
    --disable-decoder=adpcm_ima_ea_eacs \
    --disable-decoder=adpcm_ima_ea_sead \
    --disable-decoder=adpcm_ima_iss \
    --disable-decoder=adpcm_ima_qt \
    --disable-decoder=adpcm_ima_smjpeg \
    --disable-decoder=adpcm_ima_wav \
    --disable-decoder=adpcm_ima_ws \
    --disable-decoder=adpcm_ms \
    --disable-decoder=adpcm_sbpro_2 \
    --disable-decoder=adpcm_sbpro_3 \
    --disable-decoder=adpcm_sbpro_4 \
    --disable-decoder=adpcm_swf \
    --disable-decoder=adpcm_thp \
    --disable-decoder=adpcm_xa \
    --disable-decoder=adpcm_yamaha \
    --disable-demuxer=pcm_alaw \
    --disable-demuxer=pcm_mulaw \
    --disable-demuxer=voc \
    --disable-demuxer=mpc \
    --disable-demuxer=mpc8 \
    --disable-demuxer=voc \
    --disable-demuxer=xwma \
    --disable-demuxer=yuv4mpegpipe \
    --disable-demuxer=fourxm \
    --disable-decoder=mpc7 \
    --disable-decoder=mpc8 \
    --disable-decoder=bmp \
    --disable-decoder=sol_dpcm \
    --disable-decoder=pcm_dvd \
    --disable-decoder=mimic \
    --disable-decoder=pcm_lxf \
    --disable-decoder=pcm_mulaw \
    --disable-decoder=mp1 \
    --disable-decoder=mp1float \
    --disable-decoder=mp2 \
    --disable-decoder=mp2float \
    --disable-decoder=xan_dpcm \
    --disable-decoder=c93 \
    --disable-decoder=interplay_dpcm \
    --disable-decoder=kmvc \
    --disable-decoder=pcm_bluray \
    --disable-decoder=ptx \
    --disable-decoder=pcm_zork \
    --disable-decoder=roq_dpcm \
    --enable-zlib \
    --disable-decoder=mpeg4 \
    --disable-parser=dvdsub \
    --disable-parser=flac \
    --disable-parser=pnm \
    --disable-parser=cavsvideo \
    --disable-parser=dca \
    --disable-parser=vp3 \
    --disable-parser=vp8 \
    --disable-parser=dirac \
    --disable-parser=mjpeg \
    --disable-parser=dnxhd \
    --disable-parser=mlp \
    --disable-parser=h261 \
    --disable-parser=h264 \
    --disable-decoder=pcm_f32be \
    --disable-demuxer=pcm_f32be \
    --disable-decoder=pcm_f32le \
    --disable-demuxer=pcm_f32le \
    --disable-decoder=pcm_f64be \
    --disable-demuxer=pcm_f64be \
    --disable-decoder=pcm_f64le \
    --disable-demuxer=pcm_f64le \
    --disable-decoder=pcm_s24be \
    --disable-demuxer=pcm_s24be \
    --disable-decoder=pcm_s24le \
    --disable-demuxer=pcm_s24le \
    --disable-decoder=pcm_s32be \
    --disable-demuxer=pcm_s32be \
    --disable-decoder=pcm_s32le \
    --disable-demuxer=pcm_s32le \
    --disable-decoder=pcm_u24be \
    --disable-demuxer=pcm_u24be \
    --disable-decoder=pcm_u24le \
    --disable-demuxer=pcm_u24le \
    --disable-decoder=pcm_u32be \
    --disable-demuxer=pcm_u32be \
    --disable-decoder=pcm_u32le \
    --disable-demuxer=pcm_u32le \
    --disable-decoder=mpeg1video \
    --disable-decoder=mpeg2video \
    --disable-decoder=mpegvideo \
    --disable-parser=mpegvideo \
    --disable-parser=mpeg4video \
    --disable-demuxer=mpegps \
    --disable-demuxer=mpegtsraw \
    --disable-demuxer=pmp \
    --disable-demuxer=mpegvideo \
    --disable-demuxer=mpegps \
    --disable-demuxer=mpegts \
    --disable-demuxer=mpegtsraw \
    --disable-demuxer=xmv \
    --disable-decoder=xbin \
    --disable-demuxer=xbin \
    --disable-parser=vc1 \
    --disable-demuxer=vc1 \
    --disable-demuxer=vc1t \
    --disable-demuxer=smjpeg \
    --disable-parser=rv30 \
    --disable-parser=rv40 \
    --disable-decoder=bintext \
    --disable-decoder=bmv_audio \
    --disable-decoder=bmv_video \
    --disable-decoder=utvideo \
    --disable-decoder=v410 \
    --disable-decoder=vble \
    --disable-decoder=dxtory \
    --disable-decoder=escape130 \
    --disable-decoder=g723_1 \
    --disable-decoder=g729 \
    --disable-decoder=idf \
    --disable-decoder=y41p \
    --disable-decoder=indeo4 \
    --disable-parser=adx \
    --disable-parser=dvdsub \
    --disable-demuxer=bit \
    --disable-demuxer=bmv \
    --disable-demuxer=act \
    --disable-demuxer=adf \
    --disable-demuxer=adx \
    --disable-demuxer=ass \
    --disable-demuxer=bintext \
    --disable-demuxer=g723_1 \
    --disable-demuxer=g729 \
    --disable-demuxer=ico \
    --disable-demuxer=idf \
    --disable-demuxer=latm \
    --disable-demuxer=loas \
    --disable-protocol=udp \
    --disable-swresample \
    --disable-swscale \
    --disable-outdevs --enable-nonfree \
    --extra-libs="-L/opt/toolchain/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/lib/gcc/arm-linux-gnueabihf/4.8.3 -lgcc -lc -lm"

make install
