import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQml.Models 2.3
import QtQuick.XmlListModel 2.15

import "./Windows" as Windows

ApplicationWindow {
    id: window
    width: Qt.platform.os === "android" ? Screen.width : 240
    height: Qt.platform.os === "android" ? Screen.height : 320
    visible: true
    title: qsTr("freedom")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        ObjectModel {
            id: itemModel
            Windows.BookShelf { title: qsTr("书架") }
            Rectangle { height: 30; width: 80; color: "green" }
            Rectangle { height: 30; width: 80; color: "blue" }
        }

        Repeater {
            model: itemModel
        }
    }

    footer: TabBar {
        id: tabBar
        width: parent.width
        currentIndex: swipeView.currentIndex

//        XmlListModel {
//            id: xmlListModel
//            source: "https://gitee.com/yinshigui/freedom/raw/master/icon.xml"
//            XmlRole {
//                name: "url"
//                query: "url"
//            }
//        }

        ListModel {
            id: listModel

            ListElement {
                title: qsTr("书架")
            }
            ListElement {
                title: qsTr("发现")
            }
            ListElement {
                title: qsTr("设置")
            }
        }

        Repeater {
            model: listModel

            TabButton {
                id: btn
                text: title
                icon.source: "qrc:/res/bookshelf.svg"
                display: AbstractButton.IconOnly
                //提示
                ToolTip.visible: down
                ToolTip.delay: 500
                ToolTip.text: title
                onClicked: {

                }
            }
        }
    }
}
