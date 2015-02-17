import QtQuick 2.0

// Board and Knight are implicitly imported from Board.qml and Knight.qml.

Rectangle {
    width: 445; height: 445; color: "brown"

    Board {
        id: board
        onClicked: knight.moveTo(board, square)
    }

    Knight {
        id: knight
    }
}
