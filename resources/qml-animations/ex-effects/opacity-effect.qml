import QtQuick 2.0

Rectangle {
    width: 365; height: 200; color: "black"

    Image { x: 20; y: 30
            source: "../images/rocket.svg"
            effect: Opacity { opacity: 0.5 } }
    Image { x: 130; y: 30
            source: "../images/rocket.svg"
            effect: Opacity { } }   // 0.7 (default)
    Image { x: 240; y: 30
            source: "../images/rocket.svg"
            effect: Opacity { opacity: 1.0 } }
}
