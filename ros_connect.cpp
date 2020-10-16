#include "ros_connect.h"
#include <sstream>

float NM2CNT[33] = {3.0, 4.3, 3.8, 3.46, 4.5, 12.33,
                    3.0, 4.3, 3.8, 3.46, 4.5, 12.33,
                    3.3, 3.3, 3.3,
                    15.5, 15.5, 15.5, 15.5, 42.0, 42.0, 95.0, 95.0,
                    95.0, 95.0,
                    15.5, 15.5, 15.5, 15.5, 42.0, 42.0, 95.0, 95.0,
                   };

#define min(x,y) (((x) < (y)) ? (x) : (y))
#define max(x,y) (((x) > (y)) ? (x) : (y))

ros_connect::ros_connect(QObject *parent, ros::NodeHandle &nh) : QObject(parent)
{
    std::cout<<"loaded"<<std::endl;

    button_pub = nh.advertise<std_msgs::String>("/dyros_red/command",100);
    joint_sub = nh.subscribe("/tocabi/jointstates",1,&ros_connect::joint_cb,this);
    sensor_sub = nh.subscribe("/mujoco_ros_interface/sensor_states",1,&ros_connect::sensor_cb,this);
    time_sub = nh.subscribe("/tocabi/time",1,&ros_connect::time_cb,this);
    m_Q=parent;

    pos_sub = nh.subscribe("/tocabi/point",1,&ros_connect::pos_cb,this);

    tt=0;

    char buf[128];
    char buf2[128];
        std::sprintf(buf, "%6.2f", 15.48721241);
        std::sprintf(buf2,"t%d", 1);
        m_Q->findChild<QObject*>(buf2)->setProperty("text",buf);
        std::cout<<"loaded"<<std::endl;
}

void ros_connect::button_ros(int id, QString msg){

    std_msgs::String msg_;

    msg_.data = msg.toUtf8().constData();

    button_pub.publish(msg_);



}

void ros_connect::switch_ros(int id, char* msg){


}

double ros_connect::t_x(){

    return tt;
}

void ros_connect::pos_cb(geometry_msgs::PolygonStampedConstPtr msg){

    int scale = 500;

    double foot_x = 0.28;
    double foot_h = 0.1;
    double com_l = 0.05;

    foot_x = com_l;
    foot_h = com_l;

    int foot_dis_x_max = 600 - foot_x*scale;
    int foot_dis_y_max = 300 - foot_h*scale;
    int com_dis_x_max = 600 - com_l*scale;
    int com_dis_y_max = 300 - com_l*scale;




    m_Q->findChild<QObject*>("rec1")->setProperty("width",foot_x*scale);
    m_Q->findChild<QObject*>("rec1")->setProperty("height",foot_h*scale);
    m_Q->findChild<QObject*>("rec2")->setProperty("width",foot_x*scale);
    m_Q->findChild<QObject*>("rec2")->setProperty("height",foot_h*scale);
    m_Q->findChild<QObject*>("com1")->setProperty("width",com_l*scale);
    m_Q->findChild<QObject*>("com1")->setProperty("height",com_l*scale);


    //point 1 -> right foot
    int x = min(msg->polygon.points[1].x*scale+foot_dis_x_max*0.5 - foot_x*scale*0.5, foot_dis_x_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec1")->setProperty("x",x);

    x = min(msg->polygon.points[1].y*scale+foot_dis_y_max*0.5 - foot_h*scale*0.5,foot_dis_y_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec1")->setProperty("y",x);





    // point 2 -> left foot
    x = min(msg->polygon.points[2].x*scale+foot_dis_x_max*0.5 - foot_x*scale*0.5,foot_dis_x_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec2")->setProperty("x",x);

    x = min(msg->polygon.points[2].y*scale+foot_dis_y_max*0.5 - foot_h*scale*0.5,foot_dis_y_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec2")->setProperty("y",x);




    foot_x = 0.26;
    foot_h = 0.1;
    double dis_x=0.0317;



    m_Q->findChild<QObject*>("rec3")->setProperty("width",foot_x*scale);
    m_Q->findChild<QObject*>("rec3")->setProperty("height",foot_h*scale);

    x = min(msg->polygon.points[1].x*scale+foot_dis_x_max*0.5 - foot_x*scale*0.5 - dis_x*scale, foot_dis_x_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec3")->setProperty("x",x);

    x = min(msg->polygon.points[1].y*scale+foot_dis_y_max*0.5 - foot_h*scale*0.5,foot_dis_y_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec3")->setProperty("y",x);




    m_Q->findChild<QObject*>("rec4")->setProperty("width",foot_x*scale);
    m_Q->findChild<QObject*>("rec4")->setProperty("height",foot_h*scale);

    x = min(msg->polygon.points[2].x*scale+foot_dis_x_max*0.5 - foot_x*scale*0.5- dis_x*scale, foot_dis_x_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec4")->setProperty("x",x);

    x = min(msg->polygon.points[2].y*scale+foot_dis_y_max*0.5 - foot_h*scale*0.5,foot_dis_y_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("rec4")->setProperty("y",x);








    //point 0 com position

    x = min(msg->polygon.points[0].x*scale+com_dis_x_max*0.5 - com_l*scale*0.5,com_dis_x_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("com1")->setProperty("x",x);

    x = min(msg->polygon.points[0].y*scale+com_dis_y_max*0.5 - com_l*scale*0.5,com_dis_y_max);
    x = max(x,0.0);
    m_Q->findChild<QObject*>("com1")->setProperty("y",x);





    char buf[128];
    char buf2[128];
    float data;

    for(int i=0;i<4;i++)
    {
        data = msg->polygon.points[10 + i].x;
        std::sprintf(buf, "%8.3f", data);
        std::sprintf(buf2,"t%d", i*3+34);
        m_Q->findChild<QObject*>(buf2)->setProperty("text",buf);
        std::sprintf(buf,"#%02X0000", (int)(pp(data/150)*256.0));
        m_Q->findChild<QObject*>(buf2)->setProperty("color",buf);
        std::sprintf(buf2,"p%d", i*3+34);
        m_Q->findChild<QObject*>(buf2)->setProperty("value",pp(data/150));

        data = msg->polygon.points[10 + i].y;
        std::sprintf(buf, "%8.3f", data);
        std::sprintf(buf2,"t%d", i*3+35);
        m_Q->findChild<QObject*>(buf2)->setProperty("text",buf);
        std::sprintf(buf,"#%02X0000", (int)(pp(data/150)*256.0));
        m_Q->findChild<QObject*>(buf2)->setProperty("color",buf);
        std::sprintf(buf2,"p%d", i*3+35);
        m_Q->findChild<QObject*>(buf2)->setProperty("value",pp(data/150));

        data = msg->polygon.points[10 + i].z;
        std::sprintf(buf, "%8.3f", data);
        std::sprintf(buf2,"t%d", i*3+36);
        m_Q->findChild<QObject*>(buf2)->setProperty("text",buf);
        std::sprintf(buf,"#%02X0000", (int)(pp(data/150)*256.0));
        m_Q->findChild<QObject*>(buf2)->setProperty("color",buf);
        std::sprintf(buf2,"p%d", i*3+36);
        m_Q->findChild<QObject*>(buf2)->setProperty("value",pp(data/150));


    }






}

void ros_connect::update(){
    ros::spinOnce();




}
void ros_connect::time_cb(std_msgs::Float32ConstPtr msg)
{
    char buf[128];
    std::sprintf(buf, "%8.4f",msg->data);
    m_Q->findChild<QObject*>("time_text")->setProperty("text",buf);
}
void ros_connect::sensor_cb(mujoco_ros_msgs::SensorStateConstPtr msg)
{
    char buf[128];
    char buf2[128];

    for(int i=0;i<4;i++){
        for(int j=0;j<3;j++)
        {   /*
            std::sprintf(buf, "%8.3f", msg->sensor[i+4].data[j]);
            std::sprintf(buf2,"t%d", 32+3*i+j);
            m_Q->findChild<QObject*>(buf2)->setProperty("text",buf);

            std::sprintf(buf,"#%02X0000", (int)(pp(msg->sensor[i+4].data[j])*256.0));
            m_Q->findChild<QObject*>(buf2)->setProperty("color",buf);

            std::sprintf(buf2,"p%d", 32+3*i+j);
            float ratio = 1.0;
            if((i==0)||(i==2))
            {
                if(j==2){
                    ratio = 0.3;
                }
            }

            m_Q->findChild<QObject*>(buf2)->setProperty("value",ratio*pp(msg->sensor[i+4].data[j]));*/
        }

    }

}

void ros_connect::joint_cb(sensor_msgs::JointStateConstPtr msg)
{

    char buf[128];
    char buf2[128];

    for(int i=0;i<33;i++){

        std::sprintf(buf, "%8.3f", msg->effort[i]);
        std::sprintf(buf2,"t%d", i+1);
        m_Q->findChild<QObject*>(buf2)->setProperty("text",buf);

        float limit = 1000/NM2CNT[i];
        std::sprintf(buf,"#%02X0000", (int)(pp(msg->effort[i])/limit*256));
        m_Q->findChild<QObject*>(buf2)->setProperty("color",buf);


        std::sprintf(buf2,"p%d", i+1);
        m_Q->findChild<QObject*>(buf2)->setProperty("value",pp(msg->effort[i]/limit));




    }

    for(int i=0;i<31;i++){
    }

}

float ros_connect::pp(float val)
{
    if(val < 0 ){
        return (val*-1.0);


    }
    else{

        return val;
    }

}
