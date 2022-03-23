import QtQuick
import QtQuick.Controls

Page {
    width: Screen.width
    height: Screen.height

    header: ToolBar {
        ToolButton {}

        ToolButton {}
    }

    SwipeView {
        anchors.fill: parent
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}D{i:4}
}
##^##*/

