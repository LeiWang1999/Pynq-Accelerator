(function () {
  var canvas = document.querySelector("#canvas");
  var context = canvas.getContext("2d");
  canvas.width = 280;
  canvas.height = 280;
  var Mouse = { x: 0, y: 0 };
  var lastMouse = { x: 0, y: 0 };
  context.fillStyle = "black";
  context.fillRect(0, 0, canvas.width, canvas.height);
  context.color = "white";
  context.lineWidth = 15;
  context.lineJoin = context.lineCap = "round";

  canvas.addEventListener(
    "mousemove",
    function (e) {
      lastMouse.x = Mouse.x;
      lastMouse.y = Mouse.y;
      Mouse.x = e.pageX - this.offsetLeft;
      Mouse.y = e.pageY - this.offsetTop;
    },
    false
  );
  canvas.addEventListener(
    "mousedown",
    function (e) {
      canvas.addEventListener("mousemove", onPaint, false);
    },
    false
  );
  canvas.addEventListener(
    "mouseup",
    function () {
      canvas.removeEventListener("mousemove", onPaint, false);
    },
    false
  );
  _predict_btn_init();
  _clear_btn_init();
  _slide_bar_init();
  // paint callback
  var onPaint = function () {
    context.lineWidth = context.lineWidth;
    context.lineJoin = "round";
    context.lineCap = "round";
    context.strokeStyle = context.color;

    context.beginPath();
    context.moveTo(lastMouse.x, lastMouse.y);
    context.lineTo(Mouse.x, Mouse.y);
    context.closePath();
    context.stroke();
  };
  function _predict_btn_init() {
    /* SUBMIT BUTTON */
    var predictButton = $("#predictButton");
    var predictFpgaButton = $('#predictFpga')
    predictFpgaButton.on("click", function () {
      var img = canvas.toDataURL("image/jpeg");
      predict(img,type="fpga",net="lenet");
    });
    predictButton.on("click", function () {
      var img = canvas.toDataURL("image/jpeg");
      predict(img);
    });
  }
  function _update_table(data, type = "cpu", net = "lenet") {
    const res = data.res;
    const process_time = data.process_time;
    const distrubutions = _soft_max(res);
    console.log(distrubutions)
    // console.log(res, process_time);
    let index;
    for (index = 0; index < distrubutions.length; index++) {
      const element = _changeTwoDecimal(distrubutions[index]);
      $("#"+net+type).children("td").eq(index+1).html(element);
    }
    $("#"+net+type).children("td").eq(index+1).html(_changeTwoDecimal(process_time));

  }
  function predict(img, type = "cpu", net = "lenet") {
        $.ajax({
          type: "POST",
          url: "http://127.0.0.1:5000/predict",
          data: {
            img,
            type,
            net
          },
          success: function (data) {
            _update_table(data, type, net);
          },
        });
  }
  function _clear_btn_init() {
    /* CLEAR BUTTON */
    var clearButton = $("#clearButton");

    clearButton.on("click", function () {
      context.clearRect(0, 0, 280, 280);
      context.fillStyle = "black";
      context.fillRect(0, 0, canvas.width, canvas.height);
    });
  }
  function _slide_bar_init() {
    /* LINE WIDTH */
    var slider = document.getElementById("myRange");
    var output = document.getElementById("sliderValue");
    output.innerHTML = slider.value;
    slider.oninput = function () {
      output.innerHTML = this.value;
      context.lineWidth = $(this).val();
    };
    $("#lineWidth").change(function () {
      context.lineWidth = $(this).val();
    });
  }
  function _soft_max(arr){
    let _total = 0;
    for (let index = 0; index < arr.length; index++) {
      const element = arr[index];
      arr[index] = element/100;
    }
    for (let index = 0; index < arr.length; index++) {
      const element = arr[index];
      _total += Math.exp(element);
    }
    for (let index = 0; index < arr.length; index++) {
      const element = arr[index];
      let temp = Math.exp(element) / _total;
      arr[index] = temp;
    }
    return arr;
  }
  function _changeTwoDecimal(x) {
    var f_x = parseFloat(x);
    if (isNaN(f_x)) {
      alert("function:changeTwoDecimal->parameter error");
      return false;
    }
    f_x = Math.round(f_x * 100) / 100;

    return f_x;
  }
})();
