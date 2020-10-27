docker run -d --name nsqd -p 4150:4150 -p 4151:4151 nsqio/nsq /nsqd --broadcast-address=127.0.0.1 --lookupd-tcp-address=127.0.0.1:4160
