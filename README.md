# Collect linux system tool

[The script to collect system data.](#datacollect)
[Plotting data to graph use python](#polt-data-tool)

1. [s-tui](#s-tui)
2. [nethogs](#nethogs)
3. [nethogs-parser](#nethogs-parser)

---
## data_collect

Prerequest: Need to install nvidia-smi to get the GPU power consumption.
```
./all_data_collect.sh
```

## s-tui
The tool to check and collect system monitor log.
```bash
sudo apt-get install -y python-dev
sudo apt-get install -y s-tui #用ppa安裝的為非最新版
```

[GitHub - amanusk/s-tui: Terminal-based CPU stress and monitoring utility](https://github.com/amanusk/s-tui)

## nethogs
The tool to collect the network data.

```bash
sudo apt-get update -y
sudo apt-get install -y nethogs

sudo nethogs
sudo nethogs -t enp3s0 > ./nethogs.log
```
[https://github.com/raboof/nethogs](https://github.com/raboof/nethogs)

## nethogs-parser

The tool to parser network data.

```
git clone https://github.com/boopathi/nethogs-parser.git
cd nethogs-parser
go build -o hogs hogs.go
./hogs -type=pretty nethogs.log
```

[https://github.com/boopathi/nethogs-parser](https://github.com/boopathi/nethogs-parser)
## polt data tool
Just execute the file main.ipynb use vscode IDE.