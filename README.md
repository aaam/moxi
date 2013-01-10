Description
===========
Setup and configure moxi

Provides the moxi_instance LWRP

Requirements
============

Attributes
==========

Usage
=====

```
moxi_instance "11211" do
  server_list ["127.0.0.1:11212","127.0.0.1:11213"]
end

moxi_instance "11411" do
  server_list ["127.0.0.1:11412","127.0.0.1:11413"]
end
```

will generate a config file like

```
11211 = {
 "hashAlgorithm": "CRC",
 "numReplicas": 0,
 "serverList":
   [
   "127.0.0.1:11212",
   "127.0.0.1:11213"
   ],
 "vBucketMap":
   [
     [0],[1]
   ]
}
11411 = {
 "hashAlgorithm": "CRC",
 "numReplicas": 0,
 "serverList":
   [
   "127.0.0.1:11412",
   "127.0.0.1:11413"
   ],
 "vBucketMap":
   [
     [0],[1]
   ]
}
```
