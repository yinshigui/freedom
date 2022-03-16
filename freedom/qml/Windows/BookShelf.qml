import QtQuick 2.9
import QtQuick.Controls 2.5

Page {
    title: qsTr("书架")

    header: TabBar {
        id: tabBar
        width: parent.width
        currentIndex: swipeView.currentIndex

        ListModel {
            id: listModel

            ListElement {
                title: qsTr("全部")
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

    SwipeView{
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Repeater {
            model: listModel
            BookView{
                id: bookView
            }
        }
    }
}
