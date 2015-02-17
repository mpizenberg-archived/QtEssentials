import QtQuick 2.0
import Shapes 8.0

Chart {
    width: 120; height: 120
    bars: [
        Bar { color: "#a00000"
              value: -20 },
        Bar { color: "#00a000"
              value: 50 },
        Bar { color: "#0000a0"
              value: 100 }
    ]
}
