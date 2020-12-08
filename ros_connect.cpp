
#include "ros_connect.h"


#define min(x, y) (((x) < (y)) ? (x) : (y))
#define max(x, y) (((x) > (y)) ? (x) : (y))



ros_connect::ros_connect(QObject *parent, int argc, char** argv) : QObject(parent)
    {
	    m_Q = parent;
        tt=0;
        //How to Get Property from Qobject
        // QVariant Qvar = m_Q->findChild<QObject *>(buf2)->property("text");
        // QString Qstr = Qvar.toString();


        // std::string stdstr_ = m_Q->findChild<QObject *>(buf2)->property("text").toString().toStdString();

        // std::cout<< "get text? : "<< stdstr_ <<std::endl;


        // task_msg.l_x = m_Q->findChild<QObject *>("text_l_x")->property("text").toString().toDouble();
        // double dd_ = task_msg.l_x;

        // std::cout<< "text_l_x :" << dd_ << std::endl;;

        //init_ros();
    }
void ros_connect::init_ros()
    {
	    ros::init(argc, argv, "tocabi_qui");
	    ros::NodeHandle nh;


        button_pub = nh.advertise<std_msgs::String>("/tocabi/command", 100);
        joint_sub = nh.subscribe("/tocabi/jointstates", 1, &ros_connect::joint_cb, this);
        sensor_sub = nh.subscribe("/mujoco_ros_interface/sensor_states", 1, &ros_connect::sensor_cb, this);
        time_sub = nh.subscribe("/tocabi/time", 1, &ros_connect::time_cb, this);
        

        pos_sub = nh.subscribe("/tocabi/point", 1, &ros_connect::pos_cb, this);
        

        joystick_sub = nh.subscribe("/controller/gui_command",1,&ros_connect::joystick_cb, this);

        com_pub = nh.advertise<std_msgs::String>("/tocabi/command", 100);
        task_pub = nh.advertise<tocabi_controller::TaskCommand>("/tocabi/taskcommand", 100);
        task_que_pub = nh.advertise<tocabi_controller::TaskCommandQue>("/tocabi/taskquecommand", 100);

        velcommand_pub = nh.advertise<tocabi_controller::VelocityCommand>("/tocabi/velcommand", 100);

        android_pub = nh.advertise<tocabi_controller::TaskCommand>("/tocabi/taskcommand", 100);
        android_sub  =  nh.subscribe("/controller/android_command", 1 , &ros_connect::android_cb,this);
  
	    ros_init = true;


        m_Q->findChild<QObject *>("ros_button")->setProperty("text", "ROS CONNECTED");

        //Enable tabs when called
        char buf[128];
        for(int i = 2; i < 6; i++)
        {
            std::sprintf(buf, "tab%d", i);
            m_Q->findChild<QObject *>(buf)->setProperty("enabled", true); 
        }
        m_Q->findChild<QObject *>("swipeView")->setProperty("enabled", true);
        


    }

void ros_connect::shutdown()
{
    system("shutdown -P now");
}

void ros_connect::click_ros(QString msg)
    {
        std::string str1 = msg.toStdString();
        const char *p = str1.c_str();

        if (strcmp(p, "left"))
        {
            ChangeConMode(-1);
        }
        if (strcmp(p, "right"))
        {
            ChangeConMode(1);
        }

        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::tasksendcb()
    {
        handletaskmsg();

        task_pub.publish(task_msg);

        // m_Q->findChild<QObject *>("text_l_x")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_l_y")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_l_z")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_l_roll")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_l_pitch")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_l_yaw")->setProperty("text",0.0);

        // m_Q->findChild<QObject *>("text_r_x")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_r_y")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_r_z")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_r_roll")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_r_pitch")->setProperty("text",0.0);
        // m_Q->findChild<QObject *>("text_r_yaw")->setProperty("text",0.0);


    }

void ros_connect::vir_TaskHandle()
    {
        handletaskmsg();
    }

void ros_connect::rmmodxpad()
     {   
    //     std::string str = "rmmod xpad";
    //     const char *c = str.c_str();
    //     system(c);
     }
void ros_connect::joyconfig()
     {
    //     // std::string str = "xboxdrv --config /usr/share/doc/xboxdrv/examples/default.xboxdrv";
    //     std::string str1 = "cd /home/dyros_raspi/xow";
    //     std::string str2 = "./xow";

    //     const char *c1 = str1.c_str();
    //     const char *c2 = str2.c_str();
    //     system(c1);
    //     system(c2);
     }
    
void ros_connect::virjoy(float x, float y, int i)
    {
        velcmd_msg.des_vel.resize(6);
        int arrarychange = i; // i = 0(left : pos ) or 2(right : rot) or 4 (optional pos) or 5 (optional rot)
        double axes[6] = {0, 0, 0, 0, 0, 0};

        if (i == 0 || i == 2)
        {
            axes[arrarychange] = (double)(x - 37.5) / 75;
            axes[arrarychange + 1] = (double)(y - 37.5) / 75;
        }
        else if (i == 4 || i == 5)
        {
            axes[arrarychange] = x;
        }

        switch (velcmd_msg.task_link)
        {
        case 0: // pos : COM rot : pelv
            velcmd_msg.des_vel[0] = axes[1] / -40.;
            velcmd_msg.des_vel[1] = axes[0] / -40.;
            velcmd_msg.des_vel[2] = ((axes[4]) / 40.); //com pos

            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //pelv rot
            break;

        case 1: // rot : upperbody
            velcmd_msg.des_vel[0] = 0;
            velcmd_msg.des_vel[1] = 0;
            velcmd_msg.des_vel[2] = 0;
            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //upperbody rot
            break;

        case 2: // righthand
            velcmd_msg.des_vel[0] = axes[1] / -8.;
            velcmd_msg.des_vel[1] = axes[0] / -8.;
            velcmd_msg.des_vel[2] = ((axes[4]) / 20.); //righthand pos

            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //righthand rot
            break;

        case 3: // lefthand
            velcmd_msg.des_vel[0] = axes[1] / -8.;
            velcmd_msg.des_vel[1] = axes[0] / -8.;
            velcmd_msg.des_vel[2] = ((axes[4]) / 20.); //lefthand pos

            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //lefthand rot
            break;

        default:
            break;
        }

        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::button_ros(int id, QString msg)
    {
        std_msgs::String msg_;
        msg_.data = msg.toUtf8().constData();

        button_pub.publish(msg_);
    }

    

void ros_connect::switch_ros(int id, char *msg){

    }

void ros_connect::update()
    {
        if(ros_init)
        {
            ros::spinOnce();
        }
    }
double ros_connect::t_x(){
        return tt;
    }

void ros_connect::joint_cb(sensor_msgs::JointStateConstPtr msg){
    char buf[128];
    char buf2[128];
    float dot;

    // Left Arm
    for (int i = 15; i < 23; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 4);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i - 2);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Right Arm
    for (int i = 25; i < 33; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i - 12);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i - 6);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Left Leg
    for (int i = 0; i < 6; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 7);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 7);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Right Leg
    for (int i = 6; i < 12; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i - 5);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i - 5);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Waist + Upper body
    for (int i = 12; i < 15; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 17);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 17);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }
}

void ros_connect::sensor_cb(mujoco_ros_msgs::SensorStateConstPtr msg)
{
    char buf[128];
    char buf2[128];

    for (int i = 0; i < 4; i++){
        for (int j = 0; j < 3; j++){
            std::sprintf(buf, "%8.3f", msg->sensor[i + 4].data[j]);
            std::sprintf(buf2, "t%d", 32 + 3 * i + j);
            m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

            std::sprintf(buf, "#%02X0000", (int)(pp(msg->sensor[i + 4].data[j]) * 256.0));
            m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

            std::sprintf(buf2, "p%d", 32 + 3 * i + j);
            float ratio = 1.0;
            if ((i == 0) || (i == 2)){
                if (j == 2){
                    ratio = 0.3;
                }
            }
            m_Q->findChild<QObject *>(buf2)->setProperty("value", ratio * pp(msg->sensor[i + 4].data[j]));
        }
    }
}

void ros_connect::time_cb(std_msgs::Float32ConstPtr msg)
{
    char buf[128];
    std::sprintf(buf, "%8.4f", msg->data);
    m_Q->findChild<QObject *>("time_text")->setProperty("text", buf);
}

void ros_connect::pos_cb(geometry_msgs::PolygonStampedConstPtr msg)
{
    int scale = 500;

    double foot_x = 0.28;
    double foot_h = 0.1;
    double com_l = 0.05;

    foot_x = com_l;
    foot_h = com_l;

    int foot_dis_x_max = 600 - foot_x * scale;
    int foot_dis_y_max = 300 - foot_h * scale;
    int com_dis_x_max = 600 - com_l * scale;
    int com_dis_y_max = 300 - com_l * scale;

    m_Q->findChild<QObject *>("rec1")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec1")->setProperty("height", foot_h * scale);
    m_Q->findChild<QObject *>("rec2")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec2")->setProperty("height", foot_h * scale);
    m_Q->findChild<QObject *>("com1")->setProperty("width", com_l * scale);
    m_Q->findChild<QObject *>("com1")->setProperty("height", com_l * scale);

    //point 1 -> right foot
    int x = min(msg->polygon.points[1].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec1")->setProperty("x", x);

    x = min(msg->polygon.points[1].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec1")->setProperty("y", x);

    // point 2 -> left foot
    x = min(msg->polygon.points[2].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec2")->setProperty("x", x);

    x = min(msg->polygon.points[2].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec2")->setProperty("y", x);

    foot_x = 0.26;
    foot_h = 0.1;
    double dis_x = 0.0317;

    m_Q->findChild<QObject *>("rec3")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec3")->setProperty("height", foot_h * scale);

    x = min(msg->polygon.points[1].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5 - dis_x * scale, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec3")->setProperty("x", x);

    x = min(msg->polygon.points[1].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec3")->setProperty("y", x);

    m_Q->findChild<QObject *>("rec4")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec4")->setProperty("height", foot_h * scale);

    x = min(msg->polygon.points[2].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5 - dis_x * scale, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec4")->setProperty("x", x);

    x = min(msg->polygon.points[2].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec4")->setProperty("y", x);

    //point 0 com position

    x = min(msg->polygon.points[0].x * scale + com_dis_x_max * 0.5 - com_l * scale * 0.5, com_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("com1")->setProperty("x", x);

    x = min(msg->polygon.points[0].y * scale + com_dis_y_max * 0.5 - com_l * scale * 0.5, com_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("com1")->setProperty("y", x);
}

 

 

///////////////////////////////////////////////////////////////////////////////////////////////

void ros_connect::joystick_cb(const sensor_msgs::Joy::Ptr &msg)
{   
    // default 0 (Not control both LT,RT yet) , 1 (Control LT only not RT), 2 (Control RT only not LT) , 3(Control LT RT Both)
    
    velcmd_msg.des_vel.resize(6);
    sensor_msgs::Joy::Ptr Rightmsg;
    Rightmsg = msg;
    float temp[3] = {msg->axes[2], msg->axes[3], msg->axes[4]};
    Rightmsg->axes[4] = temp[0];
    Rightmsg->axes[2] = temp[1];
    Rightmsg->axes[3] = temp[2];

    if(JoyFlag ==0){
    if(abs(Rightmsg->axes[4]!= 0)) 
        LTFlag = 1;
    if(abs(Rightmsg->axes[5]!= 0))
        RTFlag = 1;
    if(LTFlag == 0) {Rightmsg->axes[4] = 1;}
    if(RTFlag == 0) {Rightmsg->axes[5] = 1;}
    if(LTFlag == 1 && RTFlag ==0)
    {
        Rightmsg->axes[5] = 1;
        JoyFlag = 0; 
    }
    if(LTFlag == 0 && RTFlag == 1)
    {
        Rightmsg->axes[4] = 1;
        JoyFlag = 0;
    }
    if(LTFlag == 1 && RTFlag == 1)
    { JoyFlag = 1;}
    if(LTFlag == 0 && RTFlag == 0)
    { JoyFlag = 0;}
        }

        
    for ( int i = 0; i<4 ; i++)
    {
        if(abs(Rightmsg->axes[i]) <= 0.1) // value of Threshold
        {
            Rightmsg->axes[i] = 0;
        }
    }  //Setting Threshold value 

    char buf[128];
    char buf2[128];
    float dot;

    // axes
    for (int i = 0; i < 4; i++)
    {
        dot = Rightmsg->axes[i];
        if((i==1) || (i==3))    std::sprintf(buf, "%8.3f", dot);
        else                    std::sprintf(buf, "%8.3f", -dot);
        std::sprintf(buf2, "t%d", i + 46);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot * 100.0) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 44);
        if((i==1) || (i==3))    m_Q->findChild<QObject *>(buf2)->setProperty("value", dot);
        else                    m_Q->findChild<QObject *>(buf2)->setProperty("value", -dot);
    }

    for (int i = 4; i < 6; i++)     //L2, R2
    {
        if(Rightmsg->buttons[i])     dot = (Rightmsg->axes[i] / 2.0) - 0.5;
        else                    dot = (Rightmsg->axes[i] / -2.0) + 0.5;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 46);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot * 100.0) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 44);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", dot);
    }

    for (int i = 8; i < 10; i++)
    {
        std::sprintf(buf2, "b%d", i);
        if (Rightmsg->axes[i - 2] > 0.5)
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", false);
        std::sprintf(buf2, "b%d", i + 2);
        if (Rightmsg->axes[i - 2] < -0.5)
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", false);
    }

    // buttons
    for (int j = 0; j < 6; j++)
    {
        std::sprintf(buf, "b%d", j);
        if (Rightmsg->buttons[j])
            m_Q->findChild<QObject *>(buf)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf)->setProperty("checked", false);
    }

    for (int j = 12; j < 17; j++)
    {
        std::sprintf(buf, "b%d", j);
        if (Rightmsg->buttons[j - 6])
            m_Q->findChild<QObject *>(buf)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf)->setProperty("checked", false);
    }

    if (Rightmsg->buttons[6])
        torqueon();
    if (Rightmsg->buttons[7])
        torqueoff();   
    if (Rightmsg->buttons[0])
        handletaskmsg();
    if (Rightmsg->buttons[1])
        VirtualInitHandle();
    if(Rightmsg->buttons[8])
        emergencyOff();
    if (Rightmsg->axes[7] != 0) {
        if (Rightmsg->axes[7] > 0)       ChangeConMode(-1);
        else if (Rightmsg->axes[7] < 0)   ChangeConMode(1);
    }
    VelocityHandle(Rightmsg);
};


void ros_connect::android_cb(const geometry_msgs::Twist::ConstPtr &msg)
    {
        char buf[128];
        char buf2[128];
        float temp[2];
        temp[0] = -msg->angular.z;
        temp[1] = -msg->linear.x;

        for (int i = 0; i < 2; i++)
        {
            float dot = (temp[i])*pow(-1, i) * 100;

            std::sprintf(buf, "%8.3f", dot);
            std::sprintf(buf2, "t%d", i +46);
            m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

            std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
            m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

            std::sprintf(buf2, "p%d", i + 44);
            m_Q->findChild<QObject *>(buf2)->setProperty("value", dot / 200.0 + 0.5);
        }

        VelHandle_android(msg);
    }

///////////////////////////////////////////////////////////////////////////////////////////////
    
void ros_connect::VirtualInitHandle()
    {
        com_msg.data = std::string("simvirtualjoint");
        com_pub.publish(com_msg);
    }

void ros_connect::torqueon()
    {
        com_msg.data = std::string("torqueon");
        com_pub.publish(com_msg);
    }

void ros_connect::torqueoff()
    {
        com_msg.data = std::string("torqueoff");
        com_pub.publish(com_msg);
    }

void ros_connect::emergencyOff()
    {
        com_msg.data = std::string("emergencyoff");
        com_pub.publish(com_msg);
    }

void ros_connect::handletaskmsg()
    {
        
        task_msg.pelv_pitch =  m_Q->findChild<QObject *>("pelv_pitch")->property("text").toString().toDouble();
        task_msg.roll = m_Q->findChild<QObject *>("com_roll")->property("text").toString().toDouble();
        task_msg.pitch = m_Q->findChild<QObject *>("com_pitch")->property("text").toString().toDouble();
        task_msg.yaw = m_Q->findChild<QObject *>("com_yaw")->property("text").toString().toDouble();
        task_msg.ratio = m_Q->findChild<QObject *>("com_pos")->property("text").toString().toDouble();
        task_msg.height = m_Q->findChild<QObject *>("com_height")->property("text").toString().toDouble();
        
        task_msg.left_foot = m_Q->findChild<QObject *>("cb_lf")->property("checked").toUInt();
        task_msg.right_foot = m_Q->findChild<QObject *>("cb_rf")->property("checked").toUInt();
        task_msg.left_hand = m_Q->findChild<QObject *>("cb_lh")->property("checked").toUInt();
        task_msg.right_hand = m_Q->findChild<QObject *>("cb_rh")->property("checked").toUInt();

        task_msg.l_x = m_Q->findChild<QObject *>("text_l_x")->property("text").toString().toDouble();
        task_msg.l_y = m_Q->findChild<QObject *>("text_l_y")->property("text").toString().toDouble();
        task_msg.l_z = m_Q->findChild<QObject *>("text_l_z")->property("text").toString().toDouble();
        task_msg.l_roll = m_Q->findChild<QObject *>("text_l_roll")->property("text").toString().toDouble();
        task_msg.l_pitch = m_Q->findChild<QObject *>("text_l_pitch")->property("text").toString().toDouble();
        task_msg.l_yaw = m_Q->findChild<QObject *>("text_l_yaw")->property("text").toString().toDouble();

        task_msg.r_x = m_Q->findChild<QObject *>("text_r_x")->property("text").toString().toDouble();
        task_msg.r_y = m_Q->findChild<QObject *>("text_r_y")->property("text").toString().toDouble();
        task_msg.r_z = m_Q->findChild<QObject *>("text_r_z")->property("text").toString().toDouble();
        task_msg.r_roll = m_Q->findChild<QObject *>("text_r_roll")->property("text").toString().toDouble();
        task_msg.r_pitch = m_Q->findChild<QObject *>("text_r_pitch")->property("text").toString().toDouble();
        task_msg.r_yaw = m_Q->findChild<QObject *>("text_r_yaw")->property("text").toString().toDouble();

        task_msg.time = m_Q->findChild<QObject *>("text_traj_time")->property("text").toString().toDouble();
        task_msg.mode = m_Q->findChild<QObject *>("task_mode")->property("currentIndex").toInt();

        task_msg.customTaskGain =  m_Q->findChild<QObject *>("customtaskgain")->property("checked").toUInt();

        task_msg.solver = m_Q->findChild<QObject *>("solver_mode")->property("currentIndex").toInt();

        task_msg.contactredis = m_Q->findChild<QObject *>("cr_mode")->property("currentIndex").toInt();

        task_msg.acc_p = m_Q->findChild<QObject *>("accgain")->property("text").toString().toDouble();

        task_msg.maintain_lc = m_Q->findChild<QObject *>("checkBox")->property("checked").toUInt();

        if (task_msg.customTaskGain)
        {
            task_msg.pos_p = m_Q->findChild<QObject *>("pospgain")->property("text").toString().toDouble();
            task_msg.pos_d = m_Q->findChild<QObject *>("posdgain")->property("text").toString().toDouble();
            task_msg.ang_p = m_Q->findChild<QObject *>("angpgain")->property("text").toString().toDouble();
            task_msg.ang_d = m_Q->findChild<QObject *>("angdgain")->property("text").toString().toDouble();
        }
    }

void ros_connect::VelocityHandle(const sensor_msgs::Joy::ConstPtr& msg)
    {
        velcmd_msg.des_vel.resize(6);
        
        switch (velcmd_msg.task_link) {
        case 0:     // pos : COM rot : pelv 
            velcmd_msg.des_vel[0] = (double)msg->axes[1] / 40.;
            velcmd_msg.des_vel[1] = (double)msg->axes[0] / 40.;
            velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / -80.);  //com pos
            if(msg->buttons[4])
                velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / 80.);

            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //pelv rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);              
            break;


            
        case 1:     // rot : upperbody
            velcmd_msg.des_vel[0] = 0;
            velcmd_msg.des_vel[1] = 0;
            velcmd_msg.des_vel[2] = 0;
            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //upperbody rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);
            break;



        case 2:     // righthand
            velcmd_msg.des_vel[0] = (double)msg->axes[1] / 8.;
            velcmd_msg.des_vel[1] = (double)msg->axes[0] / 8.;
            velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / -40.);  //righthand pos
            if(msg->buttons[4])
                velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / 40.);              


            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //righthand rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);                
            break;



        case 3:     // lefthand
            velcmd_msg.des_vel[0] = (double)msg->axes[1] / 8.;
            velcmd_msg.des_vel[1] = (double)msg->axes[0] / 8.;
            velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / -40.);  //lefthand pos
            if(msg->buttons[4])
                velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / 40.);


            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //lefthand rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);
            break;


        default:
            break;

        }
        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::VelHandle_android(const geometry_msgs::Twist::ConstPtr &msg)
    {
        velcmd_msg.des_vel.resize(6);
        velcmd_msg.des_vel[0] = -1. * ((double)msg->angular.z / 4.);
        velcmd_msg.des_vel[1] = (double)msg->linear.x / 4.;

        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::ChangeConMode(int data)
{   
    velcmd_msg.des_vel.resize(6);
    mode_index -= data;
    if(mode_index > 3)      mode_index = 0;
    if(mode_index < 0)      mode_index = 3;
    char buf[50];
        
    std::sprintf(buf, "Mode : %d", mode_index);
       
    m_Q->findChild<QObject *>("mode")->setProperty("text", buf);
    velcmd_msg.task_link = change_mode[mode_index];
}

void ros_connect::walkinginitbtncb()
    {
        task_msg.walking_enable = 3.0;
        task_msg.ik_mode = m_Q->findChild<QObject *>("ik_mode")->property("currentIndex").toInt(); 

        if (m_Q->findChild<QObject *>("walking_pattern")->property("currentIndex").toInt()  == 0)
        {
            task_msg.pattern = 0;
        }
        else if (m_Q->findChild<QObject *>("walking_pattern")->property("currentIndex").toInt() == 1)
        {
            task_msg.pattern = 1;
        }
        else
        {
            task_msg.pattern = 2;
        }

        if (m_Q->findChild<QObject *>("controlmode")->property("currentIndex").toInt() == 0)
        {
            task_msg.comcontrol = 0;
        }
        else if (m_Q->findChild<QObject *>("controlmode")->property("currentIndex").toInt()  == 1)
        {
            task_msg.comcontrol = 1;
        }
        else
        {
            task_msg.comcontrol = 2;
        }

        if (m_Q->findChild<QObject *>("checkBox_dob")->property("checked").toUInt() == true)
        {
            task_msg.dob = true;
        }
        else
        {
            task_msg.dob = false;
        }

        if (m_Q->findChild<QObject *>("checkBox_IMU")->property("checked").toUInt() == true)
        {
            task_msg.imu = true;
        }
        else
        {
            task_msg.imu = false;
        }

        if (m_Q->findChild<QObject *>("checkBox_mom")->property("checked").toUInt() == true)
        {
            task_msg.mom = true;
        }
        else
        {
            task_msg.mom = false;
        }

        task_msg.first_foot_step = m_Q->findChild<QObject *>("step_mode")->property("currentIndex").toInt();

        task_msg.x = m_Q->findChild<QObject *>("text_walking_x")->property("text").toString().toDouble();
        task_msg.y = m_Q->findChild<QObject *>("text_walking_y")->property("text").toString().toDouble();
        task_msg.z = m_Q->findChild<QObject *>("text_walking_z")->property("text").toString().toDouble();
        task_msg.walking_height = m_Q->findChild<QObject *>("text_walking_height")->property("text").toString().toDouble();
        task_msg.theta = m_Q->findChild<QObject *>("text_walking_theta")->property("text").toString().toDouble();
        task_msg.step_length_x = m_Q->findChild<QObject *>("text_walking_steplengthx")->property("text").toString().toDouble();
        task_msg.step_length_y = m_Q->findChild<QObject *>("text_walking_steplengthy")->property("text").toString().toDouble();

        task_pub.publish(task_msg);
    }

void ros_connect::walkingstartbtncb()
    {
        task_msg.walking_enable = 1.0;
        task_msg.ik_mode = m_Q->findChild<QObject *>("ik_mode")->property("currentIndex").toInt(); 

        if (m_Q->findChild<QObject *>("walking_pattern")->property("currentIndex").toInt() == 0)
        { 
            task_msg.pattern = 0;
        }
        else if (m_Q->findChild<QObject *>("walking_pattern")->property("currentIndex").toInt() == 1)
        {
            task_msg.pattern = 1;
        }
        else
        {
            task_msg.pattern = 2;
        }

        if (m_Q->findChild<QObject *>("controlmode")->property("currentIndex").toInt() == 0)
        {
            task_msg.comcontrol = 0;
        }
        else
        {
            task_msg.comcontrol = 1;
        }

        if (m_Q->findChild<QObject *>("walking_pattern_2")->property("currentIndex").toInt() == 0)
        {
            task_msg.pattern2 = 0;
        }
        else if (m_Q->findChild<QObject *>("walking_pattern_2")->property("currentIndex").toInt() == 1)
        {
            task_msg.pattern2 = 1;
        }

        if (m_Q->findChild<QObject *>("checkBox_dob")->property("checked").toUInt() == true)
        {
            task_msg.dob = true;
        }
        else
        {
            task_msg.dob = false;
        }

        if (m_Q->findChild<QObject *>("checkBox_IMU")->property("checked").toUInt() == true)
        {
            task_msg.imu = true;
        }
        else
        {
            task_msg.imu = false;
        }

        if (m_Q->findChild<QObject *>("checkBox_mom")->property("checked").toUInt() == true)
        {
            task_msg.mom = true;
        }
        else
        {
            task_msg.mom = false;
        }

        task_msg.first_foot_step = m_Q->findChild<QObject *>("step_mode")->property("currentIndex").toInt();

        task_msg.x = m_Q->findChild<QObject *>("text_walking_x")->property("text").toString().toDouble();
        task_msg.y = m_Q->findChild<QObject *>("text_walking_y")->property("text").toString().toDouble();
        task_msg.z = m_Q->findChild<QObject *>("text_walking_z")->property("text").toString().toDouble();
        task_msg.walking_height = m_Q->findChild<QObject *>("text_walking_height")->property("text").toString().toDouble();
        task_msg.theta = m_Q->findChild<QObject *>("text_walking_theta")->property("text").toString().toDouble();
        task_msg.step_length_x = m_Q->findChild<QObject *>("text_walking_steplengthx")->property("text").toString().toDouble();
        task_msg.step_length_y = m_Q->findChild<QObject *>("text_walking_steplengthy")->property("text").toString().toDouble();


        task_pub.publish(task_msg);
    
    }
    // void ros_connect::que_deletebtn()
    // {
    //     // std::cout << ui_.que_listwidget->currentIndex().row() << std::endl;
    //     // QListWidgetItem *item = ui_.que_listwidget->takeItem(ui_.que_listwidget->currentIndex().row());

    //     // ui_.que_listwidget->removeItemWidget(item);
    // }
    void ros_connect::que_resetbtn()
    {
        tq_.clear();
        std::cout<< "reset func called" << std::endl;
    }

    void ros_connect::que_sendbtn()
    {
        task_que_msg.tque.resize(tq_.size());
        for (int i = 0; i < tq_.size(); i++)
        {
            task_que_msg.tque[i] = tq_[i].tc_;
        }
        task_que_pub.publish(task_que_msg);

        std::cout<< "send func called" << std::endl;

    }

    void ros_connect::que_addquebtn()
    {
        task_que tq_temp;

        handletaskmsg();
        tq_temp.tc_ = task_msg;

        tq_.push_back(tq_temp);
  

        std::cout<< "add func called" << std::endl;

    }

    // void ros_connect::slidervelcommand(float slider_val_1, float slider_val_2, float slider_val_3, float slider_val_4)
    // {
    //     velcmd_msg.des_vel.resize(6);
    //     int gui_selected = m_Q->findChild<QObject *>("comboBox")->property("currentIndex").toInt(); 
    //     int start_index = 0;
    //     if (gui_selected == 0)
    //     {
    //         velcmd_msg.task_link = 0;
    //         start_index = 0;
    //     }
    //     else if (gui_selected == 1)
    //     {
    //         velcmd_msg.task_link = 0;
    //         start_index = 3;
    //     }
    //     else if (gui_selected == 2)
    //     {
    //         velcmd_msg.task_link = 1;
    //         start_index = 3;
    //     }
    //     else if (gui_selected == 3)
    //     {
    //         velcmd_msg.task_link = 2;
    //         start_index = 0;
    //     }
    //     else if (gui_selected == 4)
    //     {
    //         velcmd_msg.task_link = 2;
    //         start_index = 3;
    //     }
    //     else if (gui_selected == 5)
    //     {
    //         velcmd_msg.task_link = 3;
    //         start_index = 0;
    //     }
    //     else if (gui_selected == 6)
    //     {
    //         velcmd_msg.task_link = 3;
    //         start_index = 3;
    //     }

    //     velcmd_msg.des_vel[start_index + 0] = (slider_val_1 - 50) / 200.0 * slider_val_4;
    //     velcmd_msg.des_vel[start_index + 1] = (slider_val_2 - 50) / 200.0 * slider_val_4;
    //     velcmd_msg.des_vel[start_index + 2] = (slider_val_3 - 50) / 200.0 * slider_val_4;
    //     velcommand_pub.publish(velcmd_msg);
    // }



float ros_connect::pp(float val){
    if (val < 0){
        return (val * -1.0) / 150.0;
    }
    else{
        return val / 150.0;
    }
}
