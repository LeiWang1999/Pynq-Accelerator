# Pynq-Accelerator

~~This is a final year project~~, This is a simpile Accelerator Project based on PYNQ-Z1 board. The hardware side of this project was borrowed from [CNNIOT](https://github.com/mfarhadi/CNNIOT) which is a generic FPGA based Accelerator to run Convolution Neural Network and provides easy-understading and easy-customized hls code. To the software side, the `WebAPP` Floder provides a simpile website which has a canvas based drawing board , and I used ajax to send the picture we have drawed via Ethernet, the `app.py` is a flask webserver which can receive HTTP request and schedule Accelerator.

A simpile video: [VideoCast](https://leiblog.wang/static/2021-01-11/predict_7.mp4)

Based Board: `Pynq-Z1`, but you can also deploy in any other pynq boards.

## How to Use

For more introduction of the Accelerator Design, you can dive deeply into this [project](https://github.com/mfarhadi/CNNIOT), but for a quick start, you just need `Bitstream.tcl` and `Bitstream.bit` and we had provided it under `LeNet` Floder.

### Setup the environment

#### Pynq side:

You should ensure your pynq board can connect to the internet, if you have some issues, maybe [this blog](https://leiblog.wang/Embedding-board-internet-via-PC-Ethernet/) will help you. And, execute command below in your shell.

```bash
sudo apt-get update && sudo apt-get install -y git
git clone https://github.com/LeiWang1999/Pynq-Accelerator
cd Pynq-Accelerator
pip3 install -r ./requirement.txt
```

#### Host side:

```bash
git clone https://github.com/LeiWang1999/Pynq-Accelerator
```

And, you should use make sure that your computer can connect the pynq board, to find the ip address in pynq/linux execute:

```bash
ifconfig | grep inet4
```

and to find ipaddress on windows:

```bash
ipconfig /all
```

For my environment, I use Ethernet to connect my board and host computer:

<img src="http://leiblog.wang/static/image/2021/3/KobMkz.png" alt="Connect" style="zoom:50%;" />

### Run the Application

#### Pynq side:

To run this application , you can execute this command:

```bash
python3 app.py
```

#### Host side:

To run this application, open [index.html](https://github.com/LeiWang1999/Pynq-Accelerator/blob/master/WebApp/index.html) in your browser.

## Reference

1. [CNNIOT](https://github.com/mfarhadi/CNNIOT): lightweight deep learning framework in python.

2. [Flask](https://dormousehole.readthedocs.io/en/latest/): Micro python web framework.

