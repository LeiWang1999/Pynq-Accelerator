
import time
import numpy as np
import Accelerator

conv1_w=np.load('LeNet-weights/Conv1_weight.np.npy')
conv1_b=np.load('LeNet-weights/Conv1_bias.np.npy')
conv2_w=np.load('LeNet-weights/Conv2_weight.np.npy')
conv2_b=np.load('LeNet-weights/Conv2_bias.np.npy')
f1_w=np.load('LeNet-weights/fc1_weight.np.npy')
f2_w=np.load('LeNet-weights/fc2_weight.np.npy')
f1_b=np.load('LeNet-weights/fc1_bias.np.npy')
f2_b=np.load('LeNet-weights/fc2_bias.np.npy')
conv1=CNNIOT.Convolution2D(1,10,5,5,1,1,0,0,conv1_w,conv1_b,1000000)
conv2=CNNIOT.Convolution2D(10,20,5,5,1,1,0,0,conv2_w,conv2_b,1000000)
pool1=CNNIOT.Pool(2,2,2,2,'Max',0,1,10000)
fc1=CNNIOT.FC(320,50,1,f1_w,f1_b)
fc2=CNNIOT.FC(50,10,1,f2_w,f2_b)

def predict(im):
    data = np.array(im)
    data = data[np.newaxis, :, :]
    size = data.shape
    start=time.time()
    rs = np.zeros((10))
    x=conv1.forward(data,CNNIOT.dma)
    x= pool1.forward(x,CNNIOT.dma)
    x=conv2.forward(x,CNNIOT.dma)
    x= pool1.forward(x,CNNIOT.dma)
    x=fc1.forward(x,CNNIOT.dma)
    rs=fc2.forward(x,CNNIOT.dma)
    
    return rs, time.time()-start
