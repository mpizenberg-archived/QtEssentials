import QtQuick 2.0

Rectangle {
  width: 400; height: 200
  color: "lightblue"
  
  Image { id: book; source: "../images/book.svg"
          anchors.left: parent.left
          anchors.leftMargin: parent.width/16
          anchors.verticalCenter: parent.verticalCenter }

  Text { text: "Writing"; font.pixelSize: 32
         anchors.left: book.right
         anchors.leftMargin: 32
         anchors.baseline: book.verticalCenter }
}
