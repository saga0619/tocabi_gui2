#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <QIcon>
#include "ros_connect.h"



int main(int argc, char *argv[])
{
    ros::init(argc,argv,"tocabi_qui");
    ros::NodeHandle nh;
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    app.setWindowIcon(QIcon(QPixmap(":/Dyros_Logo3.png")));

    QQmlApplicationEngine engine;
    
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject* root = engine.rootObjects()[0];


    ros_connect ros(root,nh);

    engine.rootContext()->setContextProperty("ros", &ros);

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
