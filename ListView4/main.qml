import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")


    Item {
        width: 200; height: 200;

        Rectangle {
            border.color: "black"
            anchors.right: parent.right
            anchors.margins: 20

            width: 80
            height: 30
            color: "yellow"
            Text {
                anchors.right: parent.right
                text: "4.99"
            }
        }

        Rectangle {
            border.color:  "black"
            anchors {
                horizontalCenter: parent.horizontalCenter;
            }

            width: 80
            height: 30
            color: "white"

            Text {
                text: "3 ou mais"
            }
        }
    }
}
