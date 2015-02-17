import QtQuick 2.0
import Shapes 7.0

Item {
    width: 300; height: 150

    Ellipse {
        x: 35; y: 25; width: 100; height: 100
        style: Style { color: "blue"
                       filled: false }
    }

    Ellipse {
        x: 165; y: 25; width: 100; height: 100
        style: Style { color: "darkgreen"
                       filled: true }
    }
}
