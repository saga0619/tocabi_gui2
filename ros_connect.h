#ifndef ROS_CONNECT_H
#define ROS_CONNECT_H

#include <stdlib.h>
#include <iostream>

#include <QObject>
#include <QString>
#include <QPoint>
#include <QDebug>
#include <QVariant>
#include <sstream>
#include <sensor_msgs/Joy.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32MultiArray.h>
#include <std_msgs/Int32MultiArray.h>
#include <std_msgs/String.h>
#include <sensor_msgs/JointState.h>
#include <sensor_msgs/Imu.h>
#include <ros/macros.h>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <mujoco_ros_msgs/SensorState.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point32.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/PolygonStamped.h>
#include <math.h>

#include "tocabi_controller/TaskCommand.h"
#include "tocabi_controller/TaskCommandQue.h"
#include "tocabi_controller/TaskGainCommand.h"
#include "tocabi_controller/VelocityCommand.h"
#include "tocabi_controller/positionCommand.h"

#define min(x, y) (((x) < (y)) ? (x) : (y))
#define max(x, y) (((x) > (y)) ? (x) : (y))

struct task_que
{
    std::string task_title;
    tocabi_controller::TaskCommand tc_;
};

class ros_connect : public QObject
{
    Q_OBJECT
public:
    explicit ros_connect(QObject *parent, int argc, char** argv);
    int argc;
    char** argv;
    Q_INVOKABLE void init_ros();

    Q_INVOKABLE void click_ros(QString msg);
    Q_INVOKABLE void vir_TaskHandle();
    Q_INVOKABLE void rmmodxpad();
    Q_INVOKABLE void joyconfig();
    Q_INVOKABLE void virjoy(float x, float y, int i);
    Q_INVOKABLE void button_ros(int id, QString msg);
    Q_INVOKABLE void switch_ros(int id, char *msg);
    Q_INVOKABLE void tasksendcb();
    Q_INVOKABLE void walkinginitbtncb();
    Q_INVOKABLE void walkingstartbtncb();


    // Q_INVOKABLE void que_deletebtn();
    Q_INVOKABLE void que_resetbtn();
    Q_INVOKABLE void que_sendbtn();
    Q_INVOKABLE void que_addquebtn();
    //Q_INVOKABLE void slidervelcommand(float slider_val_1, float slider_val_2, float slider_val_3, float slider_val_4);
    Q_INVOKABLE void torqueon();
    Q_INVOKABLE void torqueoff();
    Q_INVOKABLE void emergencyOff();

    Q_INVOKABLE void shutdown();

    Q_INVOKABLE void update();
    Q_INVOKABLE double t_x();
    Q_INVOKABLE int tt;
    Q_INVOKABLE QString a;
    Q_INVOKABLE double target_;

    void joint_cb(sensor_msgs::JointStateConstPtr msg);
    void sensor_cb(mujoco_ros_msgs::SensorStateConstPtr msg);
    void time_cb(std_msgs::Float32ConstPtr msg);
    void pos_cb(geometry_msgs::PolygonStampedConstPtr msg);
///////////////////////////////////////////////////////////////////////////////////////////////

    void joystick_cb(const sensor_msgs::Joy::Ptr &msg);
    void android_cb(const geometry_msgs::Twist::ConstPtr &msg);

///////////////////////////////////////////////////////////////////////////////////////////////
    
    void VirtualInitHandle();
    void Torqueon();
    void Torqueoff();
    void EmergencyOff();
    void VelocityHandle(const sensor_msgs::Joy::ConstPtr& msg);
    void VelHandle_android(const geometry_msgs::Twist::ConstPtr &msg);
    void ChangeConMode(int data);


    void handletaskmsg();

//    void pushed_msg(const std_msgs::Bool &msg);

///////////////////////////////////////////////////////////////////////////////////////////////



    sensor_msgs::JointState state;
    ros::Subscriber joint_sub;
    ros::Subscriber time_sub;
    ros::Subscriber sensor_sub;
    ros::Subscriber pos_sub;
    ros::Publisher button_pub;
    ros::Publisher switch_pub;


    ros::Subscriber joystick_sub;
    ros::Publisher com_pub;
    std_msgs::String com_msg;

    ros::Publisher task_pub;
    tocabi_controller::TaskCommand task_msg;

    ros::Publisher task_que_pub;
    tocabi_controller::TaskCommandQue task_que_msg;

    ros::Publisher velcommand_pub;
    tocabi_controller::VelocityCommand velcmd_msg;

    ros::Publisher android_pub;
    ros::Subscriber android_sub;
    ros::Subscriber ardu_sub;
    int JoyFlag = 0;
    int LTFlag = 0;
    int RTFlag = 0;

    std::vector<task_que> tq_;
    bool ros_init = false;

    float pp(float val);

protected:
    QObject *m_Q;
    int mode_index = 0;
    uint32_t change_mode[4] = {0, 1, 2, 3};

signals:

public slots:
};

#endif // ROS_CONNECT_H
