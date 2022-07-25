#pragma once
#include <unistd.h>
#include <iostream>
#include <string>
namespace MyUtil{
    using std::string;
    string get_path_src_dir(){
        char buf[128] = {0};
        getcwd(buf, sizeof(buf));
        return string(buf) ;
    }

    string get_workspace_dir(){
        string src_dir = get_path_src_dir();
        size_t pos = src_dir.find("src");
        std::cout << pos << std::endl;
        string workspace_dir = src_dir.substr(0, pos);
        return workspace_dir;
    }

    string get_res_dir(){
        string workspace_dir = get_workspace_dir();
        return workspace_dir+string("res/");
    }

    const string get_res_path(const char * res_name){
        return get_res_dir() + string(res_name);
    }
}
/*
using namespace MyUtil;
int main(int argc, char **argv)
{
    std::cout<< get_path_src_dir() << std::endl;
    std::cout<< get_workspace_dir() << std::endl;
    std::cout<< get_res_dir() << std::endl;
    std::cout<< get_res_path("a.out") << std::endl;
	return 0;
}
*/
