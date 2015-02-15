import QtQuick 2.0

Rectangle {
    width: 400; height: 400

    Rectangle {
        x: 100; y: 100
        width: 200; height: 200
        gradient: blueGreenGradient
    }

    Gradient {
        id: blueGreenGradient
        GradientStop { position: 0.0; color: "green" }
        GradientStop { position: 1.0; color: "blue" }
    }
}
