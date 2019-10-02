function snowinit() {
    (function() {
        var requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame ||
        function(callback) {
            window.setTimeout(callback, 1000 / 60);
        };
        window.requestAnimationFrame = requestAnimationFrame;
    })();


    var flakes = [],
        canvas2 = document.getElementById("canvas2"),
        ctx = canvas2.getContext("2d"),
        flakeCount = 200,
        mX = -100,
        mY = -100

        canvas2.width = window.innerWidth;
        canvas2.height = window.innerHeight;

    function snow() {
        ctx.clearRect(0, 0, canvas2.width, canvas2.height);

        for (var i = 0; i < flakeCount; i++) {
            var flake = flakes[i],
                x = mX,
                y = mY,
                minDist = 150,
                x2 = flake.x,
                y2 = flake.y;

            var dist = Math.sqrt((x2 - x) * (x2 - x) + (y2 - y) * (y2 - y)),
                dx = x2 - x,
                dy = y2 - y;

            if (dist < minDist) {
                var force = minDist / (dist * dist),
                    xcomp = (x - x2) / dist,
                    ycomp = (y - y2) / dist,
                    deltaV = force / 2;

                flake.velX -= deltaV * xcomp;
                flake.velY -= deltaV * ycomp;

            } else {
                flake.velX *= .98;
                if (flake.velY <= flake.speed) {
                    flake.velY = flake.speed
                }
                flake.velX += Math.cos(flake.step += .05) * flake.stepSize;
            }

            ctx.fillStyle = "rgba(12, 104, 0," + flake.opacity + ")";
            flake.y += flake.velY;
            flake.x += flake.velX;

            if (flake.y >= canvas2.height || flake.y <= 0) {
                reset(flake);
            }


            if (flake.x >= canvas2.width || flake.x <= 0) {
                reset(flake);
            }

            ctx.beginPath();
            ctx.arc(flake.x, flake.y, flake.size, 0, Math.PI * 2);
            ctx.fill();
        }
        requestAnimationFrame(snow);
    };

    function reset(flake) {
        flake.x = Math.floor(Math.random() * canvas2.width);
        flake.y = 0;
        flake.size = (Math.random() * 10) + 2;
        flake.speed = (Math.random() * 1) + 0.5;
        flake.velY = flake.speed;
        flake.velX = 0;
        flake.opacity = (Math.random() * 0.5) + 0.3;
    }

    function init() {
        for (var i = 0; i < flakeCount; i++) {
            var x = Math.floor(Math.random() * canvas2.width),
                y = Math.floor(Math.random() * canvas2.height),
                size = (Math.random() * 3) + 2,
                speed = (Math.random() * 1) + 0.5,
                opacity = (Math.random() * 0.5) + 0.3;

            flakes.push({
                speed: speed,
                velY: speed,
                velX: 0,
                x: x,
                y: y,
                size: size,
                stepSize: (Math.random()) / 30,
                step: 0,
                opacity: opacity
            });
        }

        snow();
    };

    canvas2.addEventListener("mousemove", function(e) {
        mX = e.clientX,
        mY = e.clientY
    });

    window.addEventListener("resize",function(){
        canvas2.width = window.innerWidth;
        canvas2.height = window.innerHeight;
    })

    init();
}

function snowinit2() {
    (function() {
        var requestAnimationFrame = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame ||
        function(callback) {
            window.setTimeout(callback, 1000 / 60);
        };
        window.requestAnimationFrame = requestAnimationFrame;
    })();


    var flakes = [],
        canvas3 = document.getElementById("canvas3"),
        ctx = canvas3.getContext("2d"),
        flakeCount = 200,
        mX = -100,
        mY = -100

        canvas3.width = window.innerWidth;
        canvas3.height = window.innerHeight;

    function snow() {
        ctx.clearRect(0, 0, canvas3.width, canvas3.height);

        for (var i = 0; i < flakeCount; i++) {
            var flake = flakes[i],
                x = mX,
                y = mY,
                minDist = 150,
                x2 = flake.x,
                y2 = flake.y;

            var dist = Math.sqrt((x2 - x) * (x2 - x) + (y2 - y) * (y2 - y)),
                dx = x2 - x,
                dy = y2 - y;

            if (dist < minDist) {
                var force = minDist / (dist * dist),
                    xcomp = (x - x2) / dist,
                    ycomp = (y - y2) / dist,
                    deltaV = force / 2;

                flake.velX -= deltaV * xcomp;
                flake.velY -= deltaV * ycomp;

            } else {
                flake.velX *= .98;
                if (flake.velY <= flake.speed) {
                    flake.velY = flake.speed
                }
                flake.velX += Math.cos(flake.step += .05) * flake.stepSize;
            }

            ctx.fillStyle = "rgba(12, 104, 0," + flake.opacity + ")";
            flake.y += flake.velY;
            flake.x += flake.velX;

            if (flake.y >= canvas3.height || flake.y <= 0) {
                reset(flake);
            }


            if (flake.x >= canvas3.width || flake.x <= 0) {
                reset(flake);
            }

            ctx.beginPath();
            ctx.arc(flake.x, flake.y, flake.size, 0, Math.PI * 2);
            ctx.fill();
        }
        requestAnimationFrame(snow);
    };

    function reset(flake) {
        flake.x = Math.floor(Math.random() * canvas3.width);
        flake.y = 0;
        flake.size = (Math.random() * 10) + 2;
        flake.speed = (Math.random() * 1) + 0.5;
        flake.velY = flake.speed;
        flake.velX = 0;
        flake.opacity = (Math.random() * 0.5) + 0.3;
    }

    function init() {
        for (var i = 0; i < flakeCount; i++) {
            var x = Math.floor(Math.random() * canvas3.width),
                y = Math.floor(Math.random() * canvas3.height),
                size = (Math.random() * 3) + 2,
                speed = (Math.random() * 1) + 0.5,
                opacity = (Math.random() * 0.5) + 0.3;

            flakes.push({
                speed: speed,
                velY: speed,
                velX: 0,
                x: x,
                y: y,
                size: size,
                stepSize: (Math.random()) / 30,
                step: 0,
                opacity: opacity
            });
        }

        snow();
    };

    canvas3.addEventListener("mousemove", function(e) {
        mX = e.clientX,
        mY = e.clientY
    });

    window.addEventListener("resize",function(){
        canvas3.width = window.innerWidth;
        canvas3.height = window.innerHeight;
    })

    init();
}