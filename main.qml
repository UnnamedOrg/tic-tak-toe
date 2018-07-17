import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tic-Tak-Toe")

    Field {
        width: Math.min(parent.width, parent.height) * 0.85
        height: width
        anchors.centerIn: parent
    }

}
