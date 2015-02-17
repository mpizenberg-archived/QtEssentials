import QtQuick 2.0

Rectangle {
    width: 400; height: 400; color: "black"
    
    Image {
        id: rocket
        x: 150; y: 150
        source: "../images/rocket.svg"
        transformOrigin: Item.Center
    }

    Keys.onPressed: {
        if (event.key == Qt.Key_Left)
            rocket.rotation = (rocket.rotation - 10) % 360;
        else if (event.key == Qt.Key_Right)
            rocket.rotation = (rocket.rotation + 10) % 360;
    }
    focus: true
}
