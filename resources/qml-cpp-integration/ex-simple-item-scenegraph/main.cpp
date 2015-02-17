/*************************************************************************
 *
 * Copyright (c) 2012 Digia Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include <QGuiApplication>
#include <QQuickView>
#include "triangleitem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<TriangleItem>("Shapes", 1, 0, "Triangle");

    QQuickView view;
    view.setSource(QUrl("qrc:///triangletest.qml"));
    view.show();
    return app.exec();
}
