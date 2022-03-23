import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Freedom")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        BookShelf {}
        Rectangle {}
        Person {}
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("书架")
        }
        TabButton {
            text: qsTr("发现")
        }
        TabButton {
            text: qsTr("我的")
        }
    }
}
