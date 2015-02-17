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
#include "ellipseitem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<EllipseItem>("Shapes", 7, 0, "Ellipse");
    qmlRegisterType<Style>("Shapes", 7, 0, "Style");

    QQuickView view;
    view.setSource(QUrl("qrc:///ellipse7.qml"));
    view.show();
    return app.exec();
}
