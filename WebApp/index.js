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

    predictButton.on("click", function () {
      var img = canvas.toDataURL("image/jpeg");
      console.log(img);
      predict(img);
    });
  }
  function predict(img) {
    $.ajax({
      type: "POST",
      url:  "http://127.0.0.1:5000/predict/cpu/lenet",
      data: {
        img
      },
      success: function(data){
        $('#result').text(' Predicted Output: '+data);
      }
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
})();
