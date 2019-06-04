#!/usr/bin/env zsh
echo "gcc compile all:"
echo ""

echo "==== non_blocking_io/selectserver.c:"
gcc non_blocking_io/selectserver.c -o non_blocking_io/selectserver.out
code=$?
echo "$code"
if [[ $code -ne 0 ]]
then
    exit 1
fi

echo ""
echo "==== simple_stream_sock_demo/client.c:"
gcc simple_stream_sock_demo/client.c -o simple_stream_sock_demo/client.out
code=$?
echo "$code"
if [[ $code -ne 0 ]]
then
    exit 1
fi

echo ""
echo "==== simple_stream_sock_demo/server.c:"
gcc simple_stream_sock_demo/server.c -o simple_stream_sock_demo/server.out
code=$?
echo "$code"
if [[ $code -ne 0 ]]
then
    exit 1
fi

echo ""
echo "==== simple_dgram_sock_demo/listener.c:"
gcc simple_dgram_sock_demo/listener.c -o simple_dgram_sock_demo/listener.out
code=$?
echo "$code"
if [[ $code -ne 0 ]]
then
    exit 1
fi

echo ""
echo "==== simple_dgram_sock_demo/talker.c:"
gcc simple_dgram_sock_demo/talker.c -o simple_dgram_sock_demo/talker.out
code=$?
echo "$code"
if [[ $code -ne 0 ]]
then
    exit 1
fi
