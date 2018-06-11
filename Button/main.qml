import QtQuick 2.9
import QtQuick.Controls 2.1

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        spacing: 2
        anchors.centerIn: parent
        Button {
            id: botao
            text: "Aperte"

            onClicked: {
                mainWindow.title= "Botão1"
            }
        }
        Button {
            id: botao1
            text: "Aperte"

            onClicked: {
                mainWindow.title= "Botão2"
            }
        }
        Button {
            id: botao2
            text: "Aperte"

            onClicked: {
                mainWindow.title= "Botão3"
            }
        }
    }



    Row {
        spacing: 2
        anchors.centerIn: parent.TopRight
        Button {
            id: botaoRow
            text: "Aperte"

            onClicked: {
                mainWindow.title= "Botão Row 1"
            }
        }
        Button {
            id: botaoRow1
            text: "Aperte"

            onClicked: {
                mainWindow.title= "Botão Row 2"
            }
        }
        Button {
            id: botaoRow2
            text: "Aperte"

            onClicked: {
                mainWindow.title= "Botão Row 3"
            }
        }
    }

    Button {
        id: sair
        text: "Sair"
        anchors.centerIn: parent.TopLeft

        onClicked: {
            Qt.quit();
        }
    }

}
