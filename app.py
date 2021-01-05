from flask import Flask, request, jsonify
import base64
from PIL import Image
from io import BytesIO
from LeNet import lenet_cpu
app = Flask(__name__)
@app.route('/')
def hello_world():
    return "Hello world!"

@app.route('/predict/cpu/lenet', methods=['GET', 'POST'])
def get_predict_cpu_lenet():
    base64_data = request.form.get('img').split(';base64,')[1]
    im = Image.open(BytesIO(base64.b64decode(base64_data))).resize((28,28)).convert('L')
    res, process_time = lenet_cpu.predict(im)
    res_dict = {
        "res":tuple(res),
        "process_time": process_time
    }
    return jsonify(res_dict)

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000)
