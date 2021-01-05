import numpy as np
import time
def predict(im):
    data = np.array(im)
    conv1_w=np.load('LeNet/LeNet-weights/Conv1_weight.np.npy')
    conv1_b=np.load('LeNet/LeNet-weights/Conv1_bias.np.npy')
    conv2_w=np.load('LeNet/LeNet-weights/Conv2_weight.np.npy')
    conv2_b=np.load('LeNet/LeNet-weights/Conv2_bias.np.npy')
    f1_w=np.load('LeNet/LeNet-weights/fc1_weight.np.npy')
    f2_w=np.load('LeNet/LeNet-weights/fc2_weight.np.npy')
    f1_b=np.load('LeNet/LeNet-weights/fc1_bias.np.npy')
    f2_b=np.load('LeNet/LeNet-weights/fc2_bias.np.npy')
    process_start = time.time()
    rs = np.zeros((10, 24, 24))
    for i in range(0, 10):
        for i1 in range(0, 24):
            for i2 in range(0, 24):
                tmp = data[i1:i1 + 5, i2:i2 + 5]
                rs[i][i1][i2] = np.sum(np.multiply(tmp, conv1_w[i])) + conv1_b[i]
    #POOLING
    rs2 = np.zeros((10, 12, 12))
    for i in range(0, 10):
        i1=0
        while i1<24:
            i2=0
            while i2<24:
                tmp = rs[i, i1:i1 + 2, i2:i2 + 2]
                tmp=np.max(tmp)
    #RELU
                if tmp>0:
                    rs2[i][int(i1/2)][int(i2/2)] =tmp
                i2+=2
            i1+=2
    #conv2 (20,5,5)
    rs = np.zeros((20, 8, 8))
    for i in range(0, 20):
        for i1 in range(0, 8):
            for i2 in range(0, 8):
                tmp = rs2[:, i1:i1 + 5, i2:i2 + 5]
                rs[i][i1][i2] = np.sum(np.multiply(tmp, conv2_w[i])) + conv2_b[i]
    #POOLING
    rs2 = np.zeros((20, 4, 4))
    for i in range(0, 20):
        i1=0
        while i1<8:
            i2=0
            while i2<8:
                tmp = rs[i, i1:i1 + 2, i2:i2 + 2]
                tmp=np.max(tmp)
    #Relu
                if tmp>0:
                    rs2[i][int(i1/2)][int(i2/2)] =tmp
                i2+=2
            i1+=2
    #Flatteren
    rs = np.zeros(320)
    #FC1 320 --->50
    rs=rs2.flatten()
    rs2 = np.zeros((50))
    tmp=np.add(np.dot(f1_w, rs), f1_b)
    for i in range(0,50):
    #RELU
        if tmp[i]>0:
            rs2[i]=tmp[i]
    #FC2 50 ---> 10
    rs = np.zeros((10))
    rs = np.add(np.dot(f2_w, rs2), f2_b)
    process_time = time.time() - process_start
    return rs, process_time
