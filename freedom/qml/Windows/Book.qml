import QtQuick 2.9
import QtQuick.Layouts 1.3

Rectangle {
    color: "black"

    Row {
        id: rowLayout
        anchors.fill: parent

        Image {
            id: image
            width: 160
            height: 230
            fillMode: Image.PreserveAspectFit
        }

        Column {
            id: columnLayout
            width: 384
            height: 367

            Text {
                id: text1
                text: qsTr("Text")
                font.pixelSize: 12
            }

            Text {
                id: text2
                text: qsTr("Text")
                font.pixelSize: 12
            }

            Text {
                id: text3
                text: qsTr("Text")
                font.pixelSize: 12
            }
        }
    }
}
