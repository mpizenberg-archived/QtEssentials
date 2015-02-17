import QtQuick 2.0

Rectangle {
    width: 200; height: 500; color: "black"

    Image { x: 30; y: 30
            source: "../images/rocket.svg" }

    Image { x: 50; y: 185
            source: "../images/rocket.svg"
            effect: Colorize { color: "blue" } }

    Image { x: 70; y: 340
            source: "../images/rocket.svg"
            effect: Colorize { color: "blue"
                               strength: 0.3 } }
}
