import QtQuick 2.9
import QtQuick.Controls 2.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ListModel {
        id: list
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
        }
        ListElement {
            name: "John Brown"
            number: "555 8426"
        }
        ListElement {
            name: "Sam Wise"
            number: "555 0473"
        }
    }

//    ListView {
//        width: 180; height: 200

//        model: list
//        delegate: Text {
//            text: name + ": " + number
//        }
//    }

    Rectangle {
        width: 180; height: 200

        Component {
            id: contactDelegate
            Item {
                width: 180; height: 40
                Column {
                    Text { text: '<b>Name:</b> ' + name }
                    Text { text: '<b>Number:</b> ' + number }
                }
            }
        }

        ListView {
            anchors.fill: parent
            model: list
            delegate: contactDelegate
            //highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
            focus: true
        }
    }
}
