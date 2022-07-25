#pragma once
#include <glad/glad.h>
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
namespace MyRender{
    class Shader{
        public:
        unsigned int ID;
        Shader(const char * vertexPath, const char * fragmentPath){
            std::string vertextCode;
            std::string fragmentCode;
            std::ifstream vShaderFile;
            std::ifstream fShaderFile;
            vShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
            fShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
            try{
                vShaderFile.open(vertexPath);
                fShaderFile.open(fragmentPath);
                std::stringstream vShaderStream, fShaderStream;
                vShaderStream << vShaderFile.rdbuf();
                fShaderStream << fShaderFile.rdbuf();
                vShaderFile.close();
                fShaderFile.close();
                vertextCode = vShaderStream.str();
                fragmentCode = fShaderStream.str();
            }
            catch(std::ifstream::failure& e){
                std::cout << " =========> ERROR::SHADER::FILE_NOT_SUCCESFULLY_READ:" << e.what() << std::endl;
            }
            const char * vShaderCode = vertextCode.c_str();
            const char * fShaderCode = fragmentCode.c_str();
            unsigned int vertex_shader_id = gen_shader(vShaderCode, GL_VERTEX_SHADER, "VERTEXSHADER");
            unsigned int fragment_shader_id = gen_shader(fShaderCode, GL_FRAGMENT_SHADER, "FRAGMENTSHADER");
            ID = glCreateProgram();
            glAttachShader(ID, vertex_shader_id);
            glAttachShader(ID, fragment_shader_id);
            glLinkProgram(ID);
            checkCompileErrors(ID, "PROGRAM");
            glDeleteShader(vertex_shader_id);
            glDeleteShader(fragment_shader_id);
        }

        void use(){
            glUseProgram(ID);
        }

        void SetBool(const std::string &name, bool value) const{
            glUniform1i(glGetUniformLocation(ID, name.c_str()), (int)value);
        }

        void SetInt(const std::string &name, int value) const{
            glUniform1i(glGetUniformLocation(ID, name.c_str()), value);
        }

        void SetFloat(const std::string & name, float value) const{
            glUniform1f(glGetUniformLocation(ID, name.c_str()), value);
        }

        private:
        unsigned int gen_shader(const char * shader_source, unsigned int shader_type, std::string type){
            unsigned int shader = glCreateShader(shader_type);
            glShaderSource(shader, 1, (GLchar *const *)(&shader_source), NULL);
            glCompileShader(shader);
            checkCompileErrors(shader, type);
            return shader;
        }
        void checkCompileErrors(unsigned int shader, std::string type){
            int success;
            char infoLog[1024];
            if(type != "PROGRAM"){
                glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
                if(!success){
                    glGetShaderInfoLog(shader, 1024, NULL, infoLog);
                    std::cout << "ERROR::SHADER_COMPILATION_ERROR of type: " << type << "\n" << infoLog << "\n -- --------------------------------------------------- -- " << std::endl;
                }
            }
            else
            {
                glGetProgramiv(shader, GL_LINK_STATUS, &success);
                if(!success){
                    glGetProgramInfoLog(shader, 1024, NULL, infoLog);
                    std::cout << "ERROR::PROGRAM_LINKING_ERROR of type: " << type << "\n" << infoLog << "\n -- --------------------------------------------------- -- " << std::endl;
                }
            }
        }
    };
}