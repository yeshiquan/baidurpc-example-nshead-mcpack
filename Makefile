#COMAKE2 edit-mode: -*- Makefile -*-
####################64Bit Mode####################
ifeq ($(shell uname -m),x86_64)
CC=gcc
CXX=g++
CXXFLAGS=
CFLAGS=
CPPFLAGS=$(ENV_CXXFLAGS) \
  -g \
  -DNDEBUG \
  -O2 \
  -pipe \
  -W \
  -Wall \
  -Werror \
  -fPIC \
  -fno-omit-frame-pointer \
  -Wno-deprecated \
  -Wno-unused-parameter \
  -D__const__= \
  -DBAIDU_RPC_ENABLE_CPU_PROFILER \
  -DBAIDU_RPC_ENABLE_HEAP_PROFILER
INCPATH=-I../../src/
DEP_INCPATH=-I../../../../lib2-64/ullib \
  -I../../../../lib2-64/ullib/include \
  -I../../../../lib2-64/ullib/output \
  -I../../../../lib2-64/ullib/output/include \
  -I../../../../op/oped/noah/webfoot/naming-lib \
  -I../../../../op/oped/noah/webfoot/naming-lib/include \
  -I../../../../op/oped/noah/webfoot/naming-lib/output \
  -I../../../../op/oped/noah/webfoot/naming-lib/output/include \
  -I../../../../public/bthread \
  -I../../../../public/bthread/include \
  -I../../../../public/bthread/output \
  -I../../../../public/bthread/output/include \
  -I../../../../public/bvar \
  -I../../../../public/bvar/include \
  -I../../../../public/bvar/output \
  -I../../../../public/bvar/output/include \
  -I../../../../public/common \
  -I../../../../public/common/include \
  -I../../../../public/common/output \
  -I../../../../public/common/output/include \
  -I../../../../public/iobuf \
  -I../../../../public/iobuf/include \
  -I../../../../public/iobuf/output \
  -I../../../../public/iobuf/output/include \
  -I../../../../public/mcpack2pb \
  -I../../../../public/mcpack2pb/include \
  -I../../../../public/mcpack2pb/output \
  -I../../../../public/mcpack2pb/output/include \
  -I../../../../public/murmurhash \
  -I../../../../public/murmurhash/include \
  -I../../../../public/murmurhash/output \
  -I../../../../public/murmurhash/output/include \
  -I../../../../public/noah/giano-lib/release/baas-lib-c \
  -I../../../../public/noah/giano-lib/release/baas-lib-c/include \
  -I../../../../public/noah/giano-lib/release/baas-lib-c/output \
  -I../../../../public/noah/giano-lib/release/baas-lib-c/output/include \
  -I../../../../public/protobuf-json \
  -I../../../../public/protobuf-json/include \
  -I../../../../public/protobuf-json/output \
  -I../../../../public/protobuf-json/output/include \
  -I../../../../quality/autotest/reportlib/cpp \
  -I../../../../quality/autotest/reportlib/cpp/include \
  -I../../../../quality/autotest/reportlib/cpp/output \
  -I../../../../quality/autotest/reportlib/cpp/output/include \
  -I../../../../third-64/boost \
  -I../../../../third-64/boost/include \
  -I../../../../third-64/boost/output \
  -I../../../../third-64/boost/output/include \
  -I../../../../third-64/gflags \
  -I../../../../third-64/gflags/include \
  -I../../../../third-64/gflags/output \
  -I../../../../third-64/gflags/output/include \
  -I../../../../third-64/libevent \
  -I../../../../third-64/libevent/include \
  -I../../../../third-64/libevent/output \
  -I../../../../third-64/libevent/output/include \
  -I../../../../third-64/protobuf \
  -I../../../../third-64/protobuf/include \
  -I../../../../third-64/protobuf/output \
  -I../../../../third-64/protobuf/output/include \
  -I../../../../third-64/tcmalloc \
  -I../../../../third-64/tcmalloc/include \
  -I../../../../third-64/tcmalloc/output \
  -I../../../../third-64/tcmalloc/output/include \
  -I../../../../thirdsrc/gtest \
  -I../../../../thirdsrc/gtest/include \
  -I../../../../thirdsrc/gtest/output \
  -I../../../../thirdsrc/gtest/output/include \
  -I../../../../thirdsrc/leveldb \
  -I../../../../thirdsrc/leveldb/include \
  -I../../../../thirdsrc/leveldb/output \
  -I../../../../thirdsrc/leveldb/output/include

#============ CCP vars ============
CCHECK=@ccheck.py
CCHECK_FLAGS=
PCLINT=@pclint
PCLINT_FLAGS=
CCP=@ccp.py
CCP_FLAGS=


#COMAKE UUID
COMAKE_MD5=f7c595be6f1f3ff825306227f8d49394  COMAKE


.PHONY:all
all:comake2_makefile_check echo_client echo_server 
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mall[0m']"
	@echo "make all done"

.PHONY:comake2_makefile_check
comake2_makefile_check:
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mcomake2_makefile_check[0m']"
	#in case of error, update 'Makefile' by 'comake2'
	@echo "$(COMAKE_MD5)">comake2.md5
	@md5sum -c --status comake2.md5
	@rm -f comake2.md5

.PHONY:ccpclean
ccpclean:
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mccpclean[0m']"
	@echo "make ccpclean done"

.PHONY:clean
clean:ccpclean
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mclean[0m']"
	rm -rf echo_client
	rm -rf ./output/bin/echo_client
	rm -rf echo_server
	rm -rf ./output/bin/echo_server
	rm -rf ./echo.pb.cc
	rm -rf ./echo.pb.h
	rm -rf ./echo_client_echo.pb.o
	rm -rf echo_client_client.o
	rm -rf ./echo.pb.cc
	rm -rf ./echo.pb.h
	rm -rf ./echo_server_echo.pb.o
	rm -rf echo_server_server.o

.PHONY:dist
dist:
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mdist[0m']"
	tar czvf output.tar.gz output
	@echo "make dist done"

.PHONY:distclean
distclean:clean
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mdistclean[0m']"
	rm -f output.tar.gz
	@echo "make distclean done"

.PHONY:love
love:
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mlove[0m']"
	@echo "make love done"

echo_client:echo_client_echo.pb.o \
  echo_client_client.o \
  ../../output/lib/libbdrpc.a
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mecho_client[0m']"
	$(CXX) echo_client_echo.pb.o \
  echo_client_client.o -Xlinker "-(" ../../output/lib/libbdrpc.a ../../../../lib2-64/ullib/lib/libullib.a \
  ../../../../op/oped/noah/webfoot/naming-lib/output/lib/libwebfoot_naming.a \
  ../../../../public/bthread/libbthread.a \
  ../../../../public/bvar/libbvar.a \
  ../../../../public/common/libbase.a \
  ../../../../public/iobuf/libiobuf.a \
  ../../../../public/mcpack2pb/libmcpack2pb.a \
  ../../../../public/murmurhash/libmurmurhash3.a \
  ../../../../public/noah/giano-lib/release/baas-lib-c/libbaas_interface.a \
  ../../../../public/protobuf-json/libjson-pb.a \
  ../../../../quality/autotest/reportlib/cpp/libautotest.a \
  ../../../../third-64/boost/lib/libboost_context.a \
  ../../../../third-64/gflags/lib/libgflags.a \
  ../../../../third-64/gflags/lib/libgflags_nothreads.a \
  ../../../../third-64/libevent/lib/libevent.a \
  ../../../../third-64/libevent/lib/libevent_core.a \
  ../../../../third-64/libevent/lib/libevent_extra.a \
  ../../../../third-64/libevent/lib/libevent_openssl.a \
  ../../../../third-64/libevent/lib/libevent_pthreads.a \
  ../../../../third-64/protobuf/lib/libprotobuf-lite.a \
  ../../../../third-64/protobuf/lib/libprotobuf.a \
  ../../../../third-64/protobuf/lib/libprotoc.a \
  ../../../../third-64/tcmalloc/lib/libtcmalloc_and_profiler.a \
  ../../../../thirdsrc/gtest/output/lib/libgmock.a \
  ../../../../thirdsrc/gtest/output/lib/libgmock_main.a \
  ../../../../thirdsrc/gtest/output/lib/libgtest.a \
  ../../../../thirdsrc/gtest/output/lib/libgtest_main.a \
  ../../../../thirdsrc/leveldb/output/lib/libleveldb.a -lpthread \
  -lrt \
  -lssl \
  -lcrypto \
  -ldl \
  -lz -Xlinker "-)" -o echo_client
	mkdir -p ./output/bin
	cp -f echo_client ./output/bin

echo_server:echo_server_echo.pb.o \
  echo_server_server.o \
  ../../output/lib/libbdrpc.a
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mecho_server[0m']"
	$(CXX) echo_server_echo.pb.o \
  echo_server_server.o -Xlinker "-(" ../../output/lib/libbdrpc.a ../../../../lib2-64/ullib/lib/libullib.a \
  ../../../../op/oped/noah/webfoot/naming-lib/output/lib/libwebfoot_naming.a \
  ../../../../public/bthread/libbthread.a \
  ../../../../public/bvar/libbvar.a \
  ../../../../public/common/libbase.a \
  ../../../../public/iobuf/libiobuf.a \
  ../../../../public/mcpack2pb/libmcpack2pb.a \
  ../../../../public/murmurhash/libmurmurhash3.a \
  ../../../../public/noah/giano-lib/release/baas-lib-c/libbaas_interface.a \
  ../../../../public/protobuf-json/libjson-pb.a \
  ../../../../quality/autotest/reportlib/cpp/libautotest.a \
  ../../../../third-64/boost/lib/libboost_context.a \
  ../../../../third-64/gflags/lib/libgflags.a \
  ../../../../third-64/gflags/lib/libgflags_nothreads.a \
  ../../../../third-64/libevent/lib/libevent.a \
  ../../../../third-64/libevent/lib/libevent_core.a \
  ../../../../third-64/libevent/lib/libevent_extra.a \
  ../../../../third-64/libevent/lib/libevent_openssl.a \
  ../../../../third-64/libevent/lib/libevent_pthreads.a \
  ../../../../third-64/protobuf/lib/libprotobuf-lite.a \
  ../../../../third-64/protobuf/lib/libprotobuf.a \
  ../../../../third-64/protobuf/lib/libprotoc.a \
  ../../../../third-64/tcmalloc/lib/libtcmalloc_and_profiler.a \
  ../../../../thirdsrc/gtest/output/lib/libgmock.a \
  ../../../../thirdsrc/gtest/output/lib/libgmock_main.a \
  ../../../../thirdsrc/gtest/output/lib/libgtest.a \
  ../../../../thirdsrc/gtest/output/lib/libgtest_main.a \
  ../../../../thirdsrc/leveldb/output/lib/libleveldb.a -lpthread \
  -lrt \
  -lssl \
  -lcrypto \
  -ldl \
  -lz -Xlinker "-)" -o echo_server
	mkdir -p ./output/bin
	cp -f echo_server ./output/bin

./echo.pb.cc \
  ./echo.pb.h:echo.proto
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40m./echo.pb.cc \
  ./echo.pb.h[0m']"
	../../../..//third-64/protobuf/bin/protoc --cpp_out=./ --proto_path=./ --plugin=protoc-gen-mcpack=../../../..//public/mcpack2pb/protoc-gen-mcpack \
  --mcpack_out=. \
  --proto_path=../../../..//public/mcpack2pb/ \
  --proto_path=../../../..//public/baidu-rpc/protocol \
  --proto_path=../../../..//third-64/protobuf/include/ echo.proto

echo.proto:
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mecho.proto[0m']"
	@echo "ALREADY BUILT"

./echo_client_echo.pb.o:./echo.pb.cc
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40m./echo_client_echo.pb.o[0m']"
	$(CXX) -c $(INCPATH) $(DEP_INCPATH) $(CPPFLAGS) $(CXXFLAGS)  -o ./echo_client_echo.pb.o ./echo.pb.cc

echo_client_client.o:client.cpp
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mecho_client_client.o[0m']"
	$(CXX) -c $(INCPATH) $(DEP_INCPATH) $(CPPFLAGS) $(CXXFLAGS)  -o echo_client_client.o client.cpp

./echo_server_echo.pb.o:./echo.pb.cc
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40m./echo_server_echo.pb.o[0m']"
	$(CXX) -c $(INCPATH) $(DEP_INCPATH) $(CPPFLAGS) $(CXXFLAGS)  -o ./echo_server_echo.pb.o ./echo.pb.cc

echo_server_server.o:server.cpp
	@echo "[[1;32;40mCOMAKE:BUILD[0m][Target:'[1;32;40mecho_server_server.o[0m']"
	$(CXX) -c $(INCPATH) $(DEP_INCPATH) $(CPPFLAGS) $(CXXFLAGS)  -o echo_server_server.o server.cpp

endif #ifeq ($(shell uname -m),x86_64)


