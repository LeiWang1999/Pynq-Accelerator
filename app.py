from flask import Flask, request, jsonify
import base64
from PIL import Image
from io import BytesIO
app = Flask(__name__)
@app.route('/')
def hello_world():
    return "Hello world!"

@app.route('/predict/cpu/lenet', methods=['GET', 'POST'])
def get_predict_cpu_lenet():
    base64_data = request.form.get('img').split(';base64,')[1]
    im = Image.open(BytesIO(base64.b64decode(base64_data)))
    print(im.resize((28, 28)))
    im.show()
    return "done"

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000)
