#pragma once
#include <glad/glad.h>
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <glm/glm.hpp>
namespace MyRender{
    using std::string;
    class Shader{
        public:
        unsigned int ID;
        Shader(string vertextPath, string fragmentPath){
            Init(vertextPath.c_str(), fragmentPath.c_str());
        }
        void Init(const char * vertexPath, const char * fragmentPath){
            string vertextCode;
            string fragmentCode;
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

        void setBool(const std::string &name, bool value) const{
            glUniform1i(glGetUniformLocation(ID, name.c_str()), (int)value);
        }

        void setInt(const std::string &name, int value) const{
            glUniform1i(glGetUniformLocation(ID, name.c_str()), value);
        }

        void setFloat(const std::string & name, float value) const{
            glUniform1f(glGetUniformLocation(ID, name.c_str()), value);
        }

        void setVec2(const std::string &name, const glm::vec2 &value) const
        { 
            glUniform2fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]); 
        }
        void setVec2(const std::string &name, float x, float y) const
        { 
            glUniform2f(glGetUniformLocation(ID, name.c_str()), x, y); 
        }
        // ------------------------------------------------------------------------
        void setVec3(const std::string &name, const glm::vec3 &value) const
        { 
            glUniform3fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]); 
        }
        void setVec3(const std::string &name, float x, float y, float z) const
        { 
            glUniform3f(glGetUniformLocation(ID, name.c_str()), x, y, z); 
        }
        // ------------------------------------------------------------------------
        void setVec4(const std::string &name, const glm::vec4 &value) const
        { 
            glUniform4fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]); 
        }
        void setVec4(const std::string &name, float x, float y, float z, float w) const
        { 
            glUniform4f(glGetUniformLocation(ID, name.c_str()), x, y, z, w); 
        }
        // ------------------------------------------------------------------------
        void setMat2(const std::string &name, const glm::mat2 &mat) const
        {
            glUniformMatrix2fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE, &mat[0][0]);
        }
        // ------------------------------------------------------------------------
        void setMat3(const std::string &name, const glm::mat3 &mat) const
        {
            glUniformMatrix3fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE, &mat[0][0]);
        }
        // ------------------------------------------------------------------------
        void setMat4(const std::string &name, const glm::mat4 &mat) const
        {
            glUniformMatrix4fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE, &mat[0][0]);
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