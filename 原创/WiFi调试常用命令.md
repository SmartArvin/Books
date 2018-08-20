# WiFi调试常用命令

[TOC]

## WIFI调试相关
> 本模块主要适用于wifi模块功能调试

### 1.1  确认驱动挂载、获取wifi驱动版本号

>
>我们现在用的驱动是8188fu.ko，所以相关version信息如下：

```
//判断网卡驱动是否挂载
shell@columbia_sim_8g:/ # lsmod                                                
8188eu 974975 0 - Live 0x0000000000000000 (O)
cfg80211 357762 1 8188eu, Live 0x0000000000000000
rtkm 2071 1 8188eu, Live 0x0000000000000000 (O)
mtprealloc 2513 0 - Live 0x0000000000000000 (PO)
bnep 10655 0 - Live 0x0000000000000000
rfcomm 31700 0 - Live 0x0000000000000000
hidp 13608 0 - Live 0x0000000000000000
bluetooth 200643 5 bnep,rfcomm,hidp, Live 0x0000000000000000
uhid 5748 0 - Live 0x0000000000000000
mdrv_ir 13609 0 - Live 0x0000000000000000
rc_mstar_tv 1536 0 - Live 0x0000000000000000
mali_kbase 180258 13 - Live 0x0000000000000000 (O)
shell@columbia_sim_8g:/ # 

//如果没有挂载成功对应的KO驱动，可尝试手动挂载
shell@columbia_sim_8g:/ # insmod xxxx.ko

//驱动挂载成功后可获取驱动版本等信息
shell@columbia_sim_8g:/ # strings ./system/lib/modules/8188fu.ko | grep version= RTL871X: %s, wpa_version=%d
version=v4.3.23.4_19019.20160826_rtkm
srcversion=A289A97ACDF75A11E9621F7
shell@columbia_sim_8g:/ # 
```
### 1.2 ifconfig -a查看端口配置

> wifi端口为wlan0
```
shell@columbia_sim_8g:/ # busybox ifconfig -a                                  
eth0      Link encap:Ethernet  HWaddr 00:30:1B:BA:02:DB  
          UP BROADCAST ALLMULTI MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:30 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
          Interrupt:201 Base address:0x4000 
ip6tnl0   Link encap:UNSPEC  HWaddr 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  
          NOARP  MTU:1452  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:672 errors:0 dropped:0 overruns:0 frame:0
          TX packets:672 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:53072 (51.8 KiB)  TX bytes:53072 (51.8 KiB)
p2p0      Link encap:Ethernet  HWaddr 02:1A:13:2B:3B:8D  
          UP BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:8 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
sit0      Link encap:IPv6-in-IPv4  
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
wlan0     Link encap:Ethernet  HWaddr 00:1A:13:2B:3B:8D  
          UP BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:8 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
shell@columbia_sim_8g:/ # 
```

### 1.3 wifi常用调试命令汇总

> 以下调试命令需要在su模式下操作

#### 1.3.1 关闭wifi开关，等同于手动操作ON/OFF
```
shell@columbia_sim_8g:/ # svc wifi disable 
```
#### 1.3.2 加载wifi驱动
```
shell@columbia_sim_8g:/ # cd /system/bin
shell@columbia_sim_8g:/ # ./wifi_load_driver RTL8188ETV    //根据模组加载驱动KO
```
#### 1.3.3 查看是否有wlan0端口,如果没有可以up唤醒
```
shell@columbia_sim_8g:/ # busybox ifconfig -a      //查看是否有wlan0
shell@columbia_sim_8g:/ # busybox ifconfig wlan0 up     //power up wlan0
```

#### 1.3.4 后台运wpa_supplicant
```
shell@columbia_sim_8g:/ # rel_supplicant -iwlan0 -Dnl80211 -c /data/misc/wifi/wpa_supplicant.conf -g/data/system/wpa_supplicant/wlan0 -G1010 -O/data/misc/wifi &      
```

#### 1.3.5 进入/退出对话模式

```
shell@columbia_sim_8g:/ # wpa_cli -iwlan0    //进入对话模式
shell@columbia_sim_8g:/ # Ctrl+c      //退出对话模式
```

#### 1.3.6 启动wifi信号扫描（等同于手动开启扫描）
```
shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 scan  
```
#### 1.3.7 列出wifi信号列表信息

> 3c:46:d8:4c:16:a7       2417    -47     [WPA-PSK-CCMP+TKIP][WPA2-PSK-CCMP+TKIP][ESS]    xu
```
shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 scan_results
```
#### 1.3.8  列出连接过的wifi信息
```
shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 list_networks

输出：
shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 list_networks               
Selected interface 'wlan0'
network id / ssid / bssid / flags
0       xu      any
1       sw_dogdog       any     [CURRENT]
shell@columbia_sim_8g:/ # 
```
#### 1.3.9 新增wifi网络热点
```
shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 add_network      //运行后出现新的id，如4

shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 set_network 4 ssid '"热点名称"'      //外面单引号，里面双引号

shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 set_network 4 key_mgmt WPA-PSK

shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 set_network 4 psk '"热点密码"'       //外面单引号，里面双引号

shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 select_network 4    

shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 enable_network 4

shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 save_config
```

#### 1.3.10 查看当前正在连接的wifi信息
```
shell@columbia_sim_8g:/ # wpa_cli ifname=wlan0 status
Selected interface 'wlan0'
bssid=00:21:27:36:d6:20
freq=2437
ssid=sw_dogdog
id=1
mode=station
pairwise_cipher=CCMP
group_cipher=CCMP
key_mgmt=WPA2-PSK
wpa_state=COMPLETED
ip_address=192.168.13.104
p2p_device_address=02:1a:13:2b:3b:8d
address=00:1a:13:2b:3b:8d
uuid=12345678-9abc-def0-1234-56789abcdef0
shell@columbia_sim_8g:/ # 
```