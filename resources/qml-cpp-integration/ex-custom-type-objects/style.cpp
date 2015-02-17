/*************************************************************************
 *
 * Copyright (c) 2012 Digia Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#include "style.h"

Style::Style(QObject *parent)
    : QObject(parent)
{
}

QColor Style::color() const
{
    return m_color;
}

void Style::setColor(const QColor &newColor)
{
    if (m_color != newColor) {
        m_color = newColor;
        emit colorChanged();
    }
}

bool Style::filled() const
{
    return m_filled;
}

void Style::setFilled(bool newFilled)
{
    if (m_filled != newFilled) {
        m_filled = newFilled;
        emit filledChanged();
    }
}
