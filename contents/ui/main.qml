import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import org.kde.kirigami as Kirigami
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components as PlasmaComponents

import QMLTermWidget

PlasmoidItem {
    id: root

    preferredRepresentation: fullRepresentation
    Plasmoid.backgroundHints: PlasmaCore.Types.DefaultBackground

    compactRepresentation: Kirigami.Icon {
        source: "utilities-terminal"
        color: Kirigami.Theme.textColor
        MouseArea {
            anchors.fill: parent
            onClicked: root.expanded = !root.expanded
        }
    }

    fullRepresentation: Item {
        id: main
        implicitWidth: 600
        implicitHeight: 400

        QMLTermWidget {
            id: terminal
            anchors.fill: parent

            font.family: "Monospace"
            font.pointSize: 12
            colorScheme: "Linux"
            opacity: 1.0
            fullCursorHeight: true

            session: QMLTermSession {
                id: mainsession
                initialWorkingDirectory: "$HOME"
            }

            Component.onCompleted: {
                mainsession.startShellProgram()
                forceActiveFocus()
            }

            onFocusChanged: {
                mouse_area.enabled = !terminal.focus
            }

            MouseArea {
                id: mouse_area
                anchors.fill: parent
                propagateComposedEvents: false
                cursorShape: terminal.terminalUsesMouse ? Qt.ArrowCursor : Qt.IBeamCursor
                acceptedButtons: Qt.RightButton | Qt.LeftButton

                onDoubleClicked: {
                    var coord = correctDistortion(mouse.x, mouse.y)
                    terminal.simulateMouseDoubleClick(coord.x, coord.y, mouse.button, mouse.buttons, mouse.modifiers)
                }

                onPressed: {
                    var coord = correctDistortion(mouse.x, mouse.y)
                    terminal.simulateMousePress(coord.x, coord.y, mouse.button, mouse.buttons, mouse.modifiers)
                }

                onReleased: {
                    var coord = correctDistortion(mouse.x, mouse.y)
                    terminal.simulateMouseRelease(coord.x, coord.y, mouse.button, mouse.buttons, mouse.modifiers)
                }

                onPositionChanged: {
                    var coord = correctDistortion(mouse.x, mouse.y)
                    terminal.simulateMouseMove(coord.x, coord.y, mouse.button, mouse.buttons, mouse.modifiers)
                }

                onClicked: {
                    if (mouse.button === Qt.LeftButton)
                        terminal.forceActiveFocus()
                }
            }

            QMLTermScrollbar {
                terminal: terminal
                width: 20
                Rectangle {
                    opacity: 0.4
                    anchors.margins: 5
                    radius: width * 0.5
                    anchors.fill: parent
                }
            }
        }

        function correctDistortion(x, y) {
            x = x / width
            y = y / height
            var cc = Qt.size(0.5 - x, 0.5 - y)
            var distortion = 0
            return Qt.point((x - cc.width * (1 + distortion) * distortion) * terminal.width,
                            (y - cc.height * (1 + distortion) * distortion) * terminal.height)
        }
    }
}