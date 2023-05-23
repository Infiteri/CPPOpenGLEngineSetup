#include "Test.h"
#include "iostream"
#include "GLFW/glfw3.h"
#include "GL/gl.h"

void Test()
{
    glfwInit();

    GLFWwindow *window = glfwCreateWindow(640, 480, "My Title", NULL, NULL);
    glfwMakeContextCurrent(window);

    while (!glfwWindowShouldClose(window))
    {
        glClearColor(0, 1, 0, 1);
        glClear(GL_COLOR_BUFFER_BIT);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }
}