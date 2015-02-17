import QtQuick 2.0
import Shapes 6.0

Item {
    width: 300; height: 150

    Ellipse {
        x: 35; y: 25; width: 100; height: 100
        color: "blue"
        style: Ellipse.Outline
    }

    Ellipse {
        x: 165; y: 25; width: 100; height: 100
        color: "blue"
        style: Ellipse.Filled
    }
}
