import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Frame {
    leftPadding: 0
    rightPadding: 0
    topPadding: 0
    bottomPadding: 0

    ListView {
        id : listView
        anchors.fill: parent
        clip: true
        spacing: 0
        focus: true
        model: 100

        delegate:  SwipeDelegate {
            id: swipeDelegate
            width: listView.width
            height: listView.height / 6

            Item {
                anchors.fill: parent
                anchors.leftMargin: 5
                anchors.rightMargin: 5
                anchors.topMargin: 5
                anchors.bottomMargin: 5

                Image {
                    id: cover
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    fillMode: Image.PreserveAspectFit
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
}
