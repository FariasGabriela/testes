import QtQuick 2.9
import QtQuick.Controls 2.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: openMenu
        text: "Abrir Menu"

        onClicked: {
            menu.open();
        }
    }

    TextEdit {
        id: olaBilingue
        text: ""
        anchors.centerIn: parent
    }

    Menu {
        id: menu
        y: openMenu.height

        MenuItem {
            text: 'Opcao - Português'

            onClicked: {
                olaBilingue.text = "Oi"
            }
        }

        MenuItem {
            text: 'Opção - Ingles'

            onClicked: {
                olaBilingue.text = "Hello"
            }
        }

        MenuItem {
            text: 'Opção - Espanhol'

            onClicked: {
                olaBilingue.text = "Hola"
            }
        }
    }
}
