import QtQuick 2.0

Rectangle {
    width: 200; height: 200
    color: "black"

    Image {
        x: 50; y: 35
        source: "../images/rocket.png"
        rotation: 45.0
        transformOrigin: Item.Top
    }
}
