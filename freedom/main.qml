import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

import "./bookrack"
import "./userinterface"

ApplicationWindow {
    width: 480
    height: 640
    visible: true
    title: qsTr("freedom")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        BookRack {
            id: bookRack
        }

        UserInterface {
            id: userInterface
        }

        onCurrentIndexChanged: {
            if (currentItem == bookRack) {

                console.log(tabBar.currentItem)
            }
            if (currentItem == userInterface) {
                tabBar.currentIndex = 1
            }
        }
    }

    footer: TabBar {
        id: tabBar
        width: parent.width

        Repeater {
            model: ["BookRack", "UserInterface"]

            TabButton {
                id: btn
                text: modelData
                objectName: modelData
                display: AbstractButton.IconOnly

                onClicked: {
                    if (text === "BookRack") {
                        swipeView.currentIndex = 0
                    }

                    if (text === "UserInterface") {
                        swipeView.currentIndex = 1
                    }
                }
            }
        }
    }
}
