import QtQuick 2.5
import QtQuick.Layouts 1.1

Item {
    property int count : 0

    Rectangle {
        color: "green"
        x: parent.width / 3
        width: 1
        anchors {
            top: parent.top
            bottom: parent.bottom
        }
    }
    Rectangle {
        color: "green"
        x: 2 * parent.width / 3
        width: 1
        anchors {
            top: parent.top
            bottom: parent.bottom
        }
    }
    Rectangle {
        color: "green"
        y: parent.width / 3
        height: 1
        anchors {
            left: parent.left
            right: parent.right
        }
    }
    Rectangle {
        color: "green"
        y: 2 * parent.width / 3
        height: 1
        anchors {
            left: parent.left
            right: parent.right
        }
    }

    GridLayout {
       anchors.fill: parent
       columns: 3
       rows: 3
        Repeater {
            model: 9
            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        color = count % 2 ? "red" : "blue"
                        ++count
                    }
                }
            }
        }
    }
}
