# copymon

[![GitHub version](https://badge.fury.io/gh/igrek51%2Fcopymon.svg)](https://github.com/igrek51/copymon)
[![PyPI version](https://badge.fury.io/py/copymon.svg)](https://pypi.org/project/copymon)

> 99% is pleasing only for the first hour.

Copymon is a monitor of memory buffers for better estimation of copying time.

It shows the most probable estimated time of copying files by monitoring Dirty-Writeback Memory stream.
It estimates the time until all the buffers are REALLY written to the disk - as opposed to most of the file managers which are showing the estimated time to writing to a buffer only.

Enter `copymon` to start monitoring:  
![copymon in action](https://github.com/igrek51/copymon/blob/master/docs/img/dirty_monitor.gif?raw=true)  

It observes `/proc/meminfo` which allows to determine ETA more precisely:
```
MemTotal:       16343812 kB
MemFree:         6123312 kB
MemAvailable:   13108588 kB
Buffers:         3053664 kB
Cached:          5056684 kB
SwapCached:            0 kB
Active:          5100292 kB
Inactive:        4756604 kB
Active(anon):    1743648 kB
Inactive(anon):   926468 kB
Active(file):    3356644 kB
Inactive(file):  3830136 kB
Unevictable:          48 kB
Mlocked:              48 kB
SwapTotal:       1998164 kB
SwapFree:        1998164 kB
Dirty:               952 kB
Writeback:             0 kB
AnonPages:       1666548 kB
Mapped:          1123908 kB
Shmem:            928232 kB
Slab:             200200 kB
SReclaimable:     111172 kB
SUnreclaim:        89028 kB
KernelStack:        9840 kB
PageTables:        26592 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:    10170068 kB
Committed_AS:    7271044 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:             1584 kB
HardwareCorrupted:     0 kB
AnonHugePages:    606208 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      340204 kB
DirectMap2M:    13207552 kB
DirectMap1G:     3145728 kB
```

## Installation
```shell
pip3 install copymon
```

Requirements:

* Python 3.6 (or newer) with pip

## Usage
```bash
$ copymon
[13:33:08] Remaining:  152.71 MB, Speed:    -8.96 MB/s, AVG speed:    -6.95 MB/s, ETA:       21 s
[13:33:09] Remaining:  143.72 MB, Speed:    -8.92 MB/s, AVG speed:    -7.31 MB/s, ETA:       19 s
[13:33:10] Remaining:  136.72 MB, Speed:    -6.93 MB/s, AVG speed:    -7.72 MB/s, ETA:       17 s
[13:33:11] Remaining:  134.72 MB, Speed:    -1.99 MB/s, AVG speed:    -6.94 MB/s, ETA:       19 s
[13:33:12] Remaining:  125.67 MB, Speed:    -8.97 MB/s, AVG speed:    -6.95 MB/s, ETA:       18 s
[13:33:13] Remaining:  116.65 MB, Speed:    -8.94 MB/s, AVG speed:    -6.95 MB/s, ETA:       16 s
[13:33:14] Remaining:  107.67 MB, Speed:    -8.88 MB/s, AVG speed:    -7.18 MB/s, ETA:       14 s
[13:33:15] Remaining:   99.81 MB, Speed:    -7.79 MB/s, AVG speed:    -7.81 MB/s, ETA:       12 s
[13:33:16] Remaining:   98.67 MB, Speed:    -1.14 MB/s, AVG speed:    -6.95 MB/s, ETA:       14 s
[13:33:17] Remaining:   89.60 MB, Speed:    -8.99 MB/s, AVG speed:    -6.95 MB/s, ETA:       12 s
[13:33:18] Remaining:   80.61 MB, Speed:    -8.90 MB/s, AVG speed:    -6.95 MB/s, ETA:       11 s
[13:33:19] Remaining:   71.61 MB, Speed:    -8.88 MB/s, AVG speed:    -7.17 MB/s, ETA:        9 s
[13:33:20] Remaining:   63.62 MB, Speed:    -7.91 MB/s, AVG speed:    -7.82 MB/s, ETA:        8 s
[13:33:21] Remaining:   62.63 MB, Speed:    -1013 kB/s, AVG speed:    -6.94 MB/s, ETA:        9 s
[13:33:22] Remaining:   53.66 MB, Speed:    -8.81 MB/s, AVG speed:    -6.93 MB/s, ETA:        7 s
[13:33:23] Remaining:   44.66 MB, Speed:    -8.92 MB/s, AVG speed:    -6.93 MB/s, ETA:        6 s
[13:33:24] Remaining:   35.81 MB, Speed:    -8.78 MB/s, AVG speed:    -7.04 MB/s, ETA:        5 s
[13:33:25] Remaining:   26.66 MB, Speed:    -9.06 MB/s, AVG speed:    -7.92 MB/s, ETA:        3 s
[13:33:26] Remaining:   25.66 MB, Speed:    -1014 kB/s, AVG speed:    -7.03 MB/s, ETA:        3 s
[13:33:27] Remaining:   17.66 MB, Speed:    -7.93 MB/s, AVG speed:    -6.92 MB/s, ETA:        2 s
[13:33:28] Remaining:    8.66 MB, Speed:    -8.93 MB/s, AVG speed:    -6.93 MB/s, ETA:        1 s
[13:33:29] Remaining:     296 kB, Speed:    -8.30 MB/s, AVG speed:    -6.97 MB/s, ETA:        0 s
[13:33:30] Remaining:     100 kB, Speed:     -195 kB/s, AVG speed:    -6.88 MB/s, ETA:        0 s
[13:33:31] Remaining:     104 kB, Speed:       +3 kB/s, AVG speed:    -5.91 MB/s, ETA:        0 s
[13:33:32] Remaining:     104 kB, Speed:        0 kB/s, AVG speed:    -4.91 MB/s, ETA:        0 s
```
