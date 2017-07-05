# blockchain_miner_docker
This docker will provide you executable for mining some cryptcoins.

Suggest using http://www.minergate.com pools.

## Ethminer
Supported crypto: ETH ETC

### Example usage
```bash
docker run -v ./eth:/root/.ethash onzeway/blockchain_miner_docker:latest ethminer -C -F <YOUR_MINING_URL> --disable-submit-hashrate --mining-threads 2
```

### Help
```bash
$ ethminer --help
Usage ethminer [OPTIONS]
Options:

Work farming mode:
    -F,--farm <url>  Put into mining farm mode with the work server at URL (default: http://127.0.0.1:8545)
    --farm-recheck <n>  Leave n ms between checks for changed work (default: 500).
    --no-precompute  Don't precompute the next epoch's DAG.
Ethash verify mode:
    -w,--check-pow <headerHash> <seedHash> <difficulty> <nonce>  Check PoW credentials for validity.

Benchmarking mode:
    -M,--benchmark  Benchmark for mining and exit; use with --cpu and --opencl.
    --benchmark-warmup <seconds>  Set the duration of warmup for the benchmark tests (default: 3).
    --benchmark-trial <seconds>  Set the duration for each trial for the benchmark tests (default: 3).
    --benchmark-trials <n>  Set the number of trials for the benchmark tests (default: 5).
    --phone-home <on/off>  When benchmarking, publish results (default: on)
DAG creation mode:
    -D,--create-dag <number>  Create the DAG in preparation for mining on given block and exit.
Mining configuration:
    -C,--cpu  When mining, use the CPU.
    -G,--opencl  When mining use the GPU via OpenCL.
    --opencl-platform <n>  When mining using -G/--opencl use OpenCL platform n (default: 0).
    --opencl-device <n>  When mining using -G/--opencl use OpenCL device n (default: 0).
    -t, --mining-threads <n> Limit number of CPU/GPU miners to n (default: use everything available on selected platform)
    --allow-opencl-cpu Allows CPU to be considered as an OpenCL device if the OpenCL platform supports it.
    --list-devices List the detected OpenCL devices and exit.
    --current-block Let the miner know the current block number at configuration time. Will help determine DAG size and required GPU memory.
    --disable-submit-hashrate  When mining, don't submit hashrate to node.
    --cl-extragpu-mem Set the memory (in MB) you believe your GPU requires for stuff other than mining. Windows rendering e.t.c..
    --cl-local-work Set the OpenCL local work size. Default is 64
    --cl-global-work Set the OpenCL global work size as a multiple of the local work size. Default is 4096 * 64
    --cl-ms-per-batch Set the OpenCL target milliseconds per batch (global workgroup size). Default is 0. If 0 is given then no autoadjustment of global work size will happen
General Options:
    -v,--verbosity <0 - 9>  Set the log verbosity from 0 to 9 (default: 8).
    -V,--version  Show the version and exit.
    -h,--help  Show this help message and exit.
```

## Yam Miner
Supported crypto: PTS MMC MAX GRS DMD DVK MYR BCN QCN FCN XMR

### Example usage
```bash
docker run onzeway/blockchain_miner_docker:latest yam -c 1 -M <YOUR_MINING_URL> --threads 2
```

### Help
```bash
$ yam --help
YAM - Yet Another Miner by yvg1900
yam M7v-linux64-generic/yvg1900
**********************************************************************************************************
* Supported coins: PTS MMC MAX GRS DMD DVK MYR BCN QCN FCN XMR                                           *
* Author: yvg1900 (Twitter @yvg1900)                                                                     *
* XPT protocol: jh (http://ypool.net)                                                                    *
*                                                                                                        *
* Addresses for Thanks and Donations:                                                                    *
*   PTS: PZxsEQoiMeB6tHcW2ZySBEiCPio1WkxbEL                                                              *
*   XPM: AW2388DEWNEfMH4rP9kcj9yKcMq1QywYT4                                                              *
*   DTC: D6PmUogMigWvXurgFTqm5VLxQeVpXdYQj3                                                              *
*   MMC: MVk7PuJCa9o6qTYeiQRJDd3uHxKXMrQuU6                                                              *
*   LTC: Lby4YjhcAxhmbsdHFb4nYydrwGoiJezZt1                                                              *
*   BTC: 1FxekeK5La7AuF3oxiLzPKnjXyLMrux6VT                                                              *
*   NMC: N9KXqmzEqP7gB2dGHpEZiRMgFjUHNM38FR                                                              *
*   MAX: mTEsqg9dp3U9YXwduKxhhhDx1TRPBcNRvA                                                              *
*   NRS: 9qwyC34MCZ9XGopaNDNTnaMBtjAZhHvBd3                                                              *
*   GRS: FpHaQNJ2nMUc2kgBbzYue13E9VUfL8YbQp                                                              *
*   DMD: dEQZa7W7AczvUsjJkvWWrim1j8ZtgbAwXv                                                              *
*   DVK: D9o66V4h75JzWNpsaPidmKFVgwEf2DcDAX                                                              *
*   MYR: MFDpLPThL6D6vtWW42XobFNBpPdrJFPQb6                                                              *
*   XMR: 45w9aqVA6iVeMJ6jVHZPEyPqgVnBEAGhBBqGAW9ncXp44qbZy9vXkd2KpqYwcyVTQHF1kaSJm97GyceP3Y2dRMd7E9gyuZf *
*   BCN: 2AcGMZmmNWTiLvAg5n7ywMCAxXTxysYGsi1xzba2ok4UPccWTLqRyKN7EnQYUpEWpqBw1c9EVZrqo2CUG8f8mbjG5NA9njF *
*   QCN: 1V6wZP6aycYPbeafHxPcvaQfGs4M5kabHDQoTEsyCTT3HjccMyQbvEVNPoJuRc79XrPRYWESiAezyipWojpZ8bii3kczNgW *
*   FCN: 6rNjXkY5YQzWiTMmDUbL5gYTWx9UTdUMSA98S1G3cTmhZN9Xp6kq4woGeoK5Q8B3fPZV6TFKs36zdHpZnYxA4BFK3fLpJzW *
**********************************************************************************************************
Command-line only options:
  --help                This message.
  -c [ --config ] arg   Name of configuration file. Multiple configuration
                        files allowed.
  --compat-check arg    Exit right after compatibility checks with provided
                        return code.

Command-line and configuration file options:
  -t [ --threads ] arg       The number of threads for mining (default is to
                             autodetect), when t<=0 use autodetect+t threads.
  -M [ --mine ] arg          Mining target in YAM URI format (protocol, worker
                             name, password, pool address, pool ports, coin
                             type, mining parameters). Multiple mining targets
                             allowed.
  -P [ --mining-params ] arg Mining parameters in parameter list format
                             (coin:param1=value1&param2=value2&param3=value3.
                             Multiple parameter groups allowed.
  -W [ --worker-params ] arg Worker parameters in parameter list format
                             (worker_index:param1=value1&param2=value2&param3=v
                             alue3. Multiple parameter groups allowed.
  --compact-stats arg        Enable compact statistics output (uses less screen
                             space).
  --print-timestamps arg     Enable printing timestamps for every output line.
  --proxy arg                Proxy server to use in format
                             type://user:password@host:port (check
                             documentation for supported proxy types and usage
                             details).
```

## nheqminer
Supported crypto: ZEC

### Example usage
```bash
docker run onzeway/blockchain_miner_docker:latest nheqminer -l <YOUR_MINING_URL> -u <YOUR_MINING_USER> -t 4
```