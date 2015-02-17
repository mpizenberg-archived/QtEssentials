#ifndef TIMER_H
#define TIMER_H

#include <QObject>

class QTimer;

class Timer : public QObject
{
    Q_OBJECT

public:
    explicit Timer( QObject* parent = 0 );

private:
    QTimer* m_timer;
};

#endif // TIMER_H
