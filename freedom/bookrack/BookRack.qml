import QtQuick.Controls 2.2

Page {
    id: view
    width: 480
    height: 640
    title: qsTr("BookRack")

    header: TabBar {
        id: bar
        width: parent.width
        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("Discover")
        }
        TabButton {
            text: qsTr("Activity")
        }
    }
}
