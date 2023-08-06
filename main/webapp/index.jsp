<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--<%--%>

<%--    if (request.getSession().getAttribute("student") != null) {--%>
<%--        response.sendRedirect("Home.jsp");--%>
<%--        return;--%>
<%--    }--%>

<%--    %>--%>
<html>
<head>
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<body class="bg-gradient-to-r from-indigo-500 via-purple-300 to-sky-500 bg-repeat-round bg-auto md:bg-contain ">
<!-- <div class="flex justify-center mt-[4%] h-32">
  <img src="images/home/logo.png"  class=" md:block "/>
 </div> -->

<div class="min-h-screen flex justify-center bg-repeat-round items-center px-4" id="signInBox">
    <div class="relative flex">
        <div class="flex flex-col p-7 space-y-6 bg-white rounded-l-lg shadow-2xl justify-center md:justify-start ">

            <h2 class="font-semibold text-4xl text-center">Log In</h2>
            <p class="text-md text-gray-400">Log into your account to uploade or download picture, videos or music.</p>

            <div>
                <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email address</label>
                <div class="mt-2">
                    <input id="email" placeholder="Enter your Email" name="email" type="email" autocomplete="email"
                           required
                           class="w-full rounded-lg border-0 p-3 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600  sm:text-sm sm:leading-6">
                </div>
            </div>
            <div>
                <div class="flex items-center justify-between">
                    <label for="password" class="block text-sm font-medium leading-6 text-gray-900">Password</label>
                    <div class="text-sm">
                        <a href="#" class="font-semibold text-indigo-600 hover:text-indigo-500">Forgot password?</a>
                    </div>
                </div>
                <div class="mt-2">
                    <input id="password" name="password" type="password" autocomplete="current-password" required
                           class="w-full rounded-md border-0 p-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>

            <a href="home" type="button"
               class="block text-center py-3 bg-blue-500 text-white text-lg font-semibold rounded-lg hover:bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500">Log
                IN </a>
            <div class="border border-gray-300"></div>
            <p class="text-lg text-gray-400 font-semibold text-center">Or</p>
            <button
                    class="block py-3 bg-sky-500 text-white text-lg font-semibold rounded-lg hover:bg-gradient-to-r from-pink-500 via-purple-500 to-indigo-500"
                    onclick="changeView();">Register
            </button>

        </div>

        <img src="assets/images/login/login.jpg" alt=""
             class="h-[600px] rounded-r-lg shadow-2xl w-[700px] opacity-90 hidden md:block ">

    </div>
</div>

<div class="hidden min-h-screen flex justify-center bg-repeat-round items-center px-4" id="signUpBox">
    <div class="relative flex">
        <div class="flex flex-col p-7 space-y-6 bg-white rounded-l-lg shadow-2xl justify-center md:justify-start ">
            <h2 class="font-semibold text-4xl text-center">Register</h2>
            <p class="text-md text-gray-400">Log into your account to uploade or download picture, videos or music.</p>

            <div>
                <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email address</label>
                <div class="mt-2">
                    <input id="email" placeholder="Enter your Email" name="email" type="email" autocomplete="email"
                           required
                           class="w-full rounded-lg border-0 p-3 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600  sm:text-sm sm:leading-6">
                </div>
            </div>
            <div>
                <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Address</label>
                <div class="mt-2">
                    <input id="email" placeholder="Enter your Address" name="email" type="email" autocomplete="email"
                           required
                           class="w-full rounded-lg border-0 p-3 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600  sm:text-sm sm:leading-6">
                </div>
            </div>
            <div>
                <div class="flex items-center justify-between">
                    <label for="password" class="block text-sm font-medium leading-6 text-gray-900">Password</label>
                    <div class="text-sm">
                        <a href="#" class="font-semibold text-indigo-600 hover:text-indigo-500">Forgot password?</a>
                    </div>
                </div>
                <div class="mt-2">
                    <input id="password" name="password" type="password" autocomplete="current-password" required
                           class="w-full rounded-md border-0 p-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>

            <a href="home.html" type="button"
               class="block text-center py-3 bg-blue-500 text-white text-lg font-semibold rounded-lg hover:bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500">Register
            </a>
            <div class="border border-gray-300"></div>
            <p class="text-lg text-gray-400 font-semibold text-center">Or</p>
            <button
                    class="block py-3 bg-sky-500 text-white text-lg font-semibold rounded-lg hover:bg-gradient-to-r from-pink-500 via-purple-500 to-indigo-500"
                    onclick="changeView();">Back To Login
            </button>

        </div>

        <img src="assets/images/login/register.jpg" alt=""
             class="h-[700px] rounded-r-lg shadow-2xl w-[750px] opacity-90 hidden md:block ">
    </div>
</div>


<footer class="absolute w-full bottom-0 bg-gradient-to-r from-indigo-500 via-purple-300 to-sky-500 bg-repeat-round bg-auto md:bg-contain  pb-6">
    <div class="mx-auto px-4">
        <hr class="mb-6 border-b-1 border-gray-700"/>
        <div class="flex flex-wrap items-center md:justify-between justify-center">
            <div class="w-full md:w-4/12 px-4">
                <div class="text-sm text-white font-semibold py-1">
                    Copyright © 2019
                    <a href="https://www.creative-tim.com"
                       class="text-white hover:text-gray-400 text-sm font-semibold py-1">Creative Tim</a>
                </div>
            </div>
            <div class="w-full md:w-8/12 px-4">
                <ul class="flex flex-wrap list-none md:justify-end  justify-center">
                    <li>
                        <a href="https://www.creative-tim.com"
                           class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">Creative Tim</a>
                    </li>
                    <li>
                        <a href="https://www.creative-tim.com/presentation"
                           class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">About Us</a>
                    </li>
                    <li>
                        <a href="http://blog.creative-tim.com"
                           class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">Blog</a>
                    </li>
                    <li>
                        <a class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">MIT License</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<script src="assets/js/script.js"></script>
</body>
</html>
