import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Frame {
    id: frame

    ListView {
        id : listView
        anchors.fill: parent
        clip: true
        model: 100
        delegate: buttonDelegate
        spacing: 5
        focus: true
    }

    Component {
        id: buttonDelegate
        Button {
            width: listView.width
            height: 100
            flat: true
            onHoveredChanged: {}

            Image {
                id: cover
                width: 100
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "qrc:/res/cover.jpg"
            }

            Text {
                anchors.centerIn: parent
                font.pixelSize: 10
                text: listView.currentIndex
            }
        }
    }
}

