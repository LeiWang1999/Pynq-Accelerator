from flask import Flask, request, jsonify
import base64
from PIL import Image
from io import BytesIO
from LeNet import lenet_cpu, lenet_fpga
app = Flask(__name__)
@app.route('/')
def hello_world():
    return "Hello world!"

@app.route('/predict', methods=['GET', 'POST'])
def get_predict_cpu_lenet():
    net = request.form.get('net')
    print(net)
    process_type = request.form.get('type')
    print(process_type)
    base64_data = request.form.get('img').split(';base64,')[1]
    im = Image.open(BytesIO(base64.b64decode(base64_data))).resize((28,28)).convert('L')
    if net=="lenet" and process_type=="cpu":
        res, process_time = lenet_cpu.predict(im)
    elif net=="lenet" and process_type=="fpga":
        res, process_time = lenet_fpga.predict(im)
    else:
        res = []
        process_type = 0.0
    res_dict = {
        "res":tuple(res),
        "process_time": process_time
    }
    return jsonify(res_dict)



if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000)
