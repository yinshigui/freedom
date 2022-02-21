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
            id: userinterface
        }

        onCurrentIndexChanged: {
            if (currentItem == bookRack) {
                tabBar.currentIndex = 0
            }
            if (currentItem == page1) {
                tabBar.currentIndex = 1
            }


        }
    }

    footer: TabBar {
        id: tabBar
        width: parent.width

        Repeater {
            model: ["First", "Second", "Third", "Fourth", "Fifth"]

            TabButton {
                text: modelData
                display: AbstractButton.IconOnly

                onClicked: {
                    if (text === "First") {
                        swipeView.currentIndex = 0
                    }

                    if (text === "Second") {
                        swipeView.currentIndex = 1
                    }

                    if (text === "Third") {
                        swipeView.currentIndex = 2
                    }

                    if (text === "Fourth") {
                        swipeView.currentIndex = 3
                    }
                }
            }
        }
    }
}
