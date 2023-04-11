<%-- 
    Document   : roomlist
    Created on : Apr 6, 2023, 12:58:58 PM
    Author     : nitro 5
--%>

<%-- 
    Document   : listuser
    Created on : Mar 22, 2023, 5:01:36 PM
    Author     : nitro 5
--%>

<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!----======== CSS ======== -->
    <style>
        /* ===== Google Font Import - Poppins ===== */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        :root{
            /* ===== Colors ===== */
            --primary-color: #0E4BF1;
            --panel-color: #FFF;
            --text-color: #000;
            --black-light-color: #707070;
            --border-color: #e6e5e5;
            --toggle-color: #DDD;
            --box1-color: #4DA3FF;
            --box2-color: #FFE6AC;
            --box3-color: #E7D1FC;
            --title-icon-color: #fff;
            /* ====== Transition ====== */
            --tran-05: all 0.5s ease;
            --tran-03: all 0.3s ease;
            --tran-03: all 0.2s ease;
        }
        body{
            min-height: 100vh;
            background-color: var(--primary-color);
        }
        body.dark{
            --primary-color: #3A3B3C;
            --panel-color: #242526;
            --text-color: #CCC;
            --black-light-color: #CCC;
            --border-color: #4D4C4C;
            --toggle-color: #FFF;
            --box1-color: #3A3B3C;
            --box2-color: #3A3B3C;
            --box3-color: #3A3B3C;
            --title-icon-color: #CCC;
        }
        /* === Custom Scroll Bar CSS === */
        ::-webkit-scrollbar {
            width: 8px;
        }
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        ::-webkit-scrollbar-thumb {
            background: var(--primary-color);
            border-radius: 12px;
            transition: all 0.3s ease;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: #0b3cc1;
        }
        body.dark::-webkit-scrollbar-thumb:hover,
        body.dark .activity-data::-webkit-scrollbar-thumb:hover{
            background: #3A3B3C;
        }
        nav{
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 250px;
            padding: 10px 14px;
            background-color: var(--panel-color);
            border-right: 1px solid var(--border-color);
            transition: var(--tran-05);
        }
        nav.close{
            width: 73px;
        }
        nav .logo-name{
            display: flex;
            align-items: center;
        }
        nav .logo-image{
            display: flex;
            justify-content: center;
            min-width: 45px;
        }
        nav .logo-image img{
            width: 40px;
            object-fit: cover;
            border-radius: 50%;
        }
        nav .logo-name .logo_name{
            font-size: 22px;
            font-weight: 600;
            color: var(--text-color);
            margin-left: 14px;
            transition: var(--tran-05);
        }
        nav.close .logo_name{
            opacity: 0;
            pointer-events: none;
        }
        nav .menu-items{
            margin-top: 40px;
            height: calc(100% - 90px);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .menu-items li{
            list-style: none;
        }
        .menu-items li a{
            display: flex;
            align-items: center;
            height: 50px;
            text-decoration: none;
            position: relative;
        }
        .nav-links li a:hover:before{
            content: "";
            position: absolute;
            left: -7px;
            height: 5px;
            width: 5px;
            border-radius: 50%;
            background-color: var(--primary-color);
        }
        body.dark li a:hover:before{
            background-color: var(--text-color);
        }
        .menu-items li a i{
            font-size: 24px;
            min-width: 45px;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--black-light-color);
        }
        .menu-items li a .link-name{
            font-size: 18px;
            font-weight: 400;
            color: var(--black-light-color);
            transition: var(--tran-05);
        }
        nav.close li a .link-name{
            opacity: 0;
            pointer-events: none;
        }
        .nav-links li a:hover i,
        .nav-links li a:hover .link-name{
            color: var(--primary-color);
        }
        body.dark .nav-links li a:hover i,
        body.dark .nav-links li a:hover .link-name{
            color: var(--text-color);
        }
        .menu-items .logout-mode{
            padding-top: 10px;
            border-top: 1px solid var(--border-color);
        }
        .menu-items .mode{
            display: flex;
            align-items: center;
            white-space: nowrap;
        }
        .menu-items .mode-toggle{
            position: absolute;
            right: 14px;
            height: 50px;
            min-width: 45px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
        .mode-toggle .switch{
            position: relative;
            display: inline-block;
            height: 22px;
            width: 40px;
            border-radius: 25px;
            background-color: var(--toggle-color);
        }
        .switch:before{
            content: "";
            position: absolute;
            left: 5px;
            top: 50%;
            transform: translateY(-50%);
            height: 15px;
            width: 15px;
            background-color: var(--panel-color);
            border-radius: 50%;
            transition: var(--tran-03);
        }
        body.dark .switch:before{
            left: 20px;
        }
        .dashboard{
            position: relative;
            left: 250px;
            background-color: var(--panel-color);
            min-height: 100vh;
            width: calc(100% - 250px);
            padding: 10px 14px;
            transition: var(--tran-05);
        }
        nav.close ~ .dashboard{
            left: 73px;
            width: calc(100% - 73px);
        }
        .dashboard .top{
            width: 100%;
            height: 50px;
            
        }
        .dashboard .top h1{
            text-align: center;
        }
        .dashboard .dash-content{
            padding-top: 50px;
        }
        .dash-content .title{
            display: flex;
            align-items: center;
            margin: 60px 0 30px 0;
        }
        .dash-content .title i{
            position: relative;
            height: 35px;
            width: 35px;
            background-color: var(--primary-color);
            border-radius: 6px;
            color: var(--title-icon-color);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
        }
        .dash-content .title .text{
            font-size: 24px;
            font-weight: 500;
            color: var(--text-color);
            margin-left: 10px;
        }
        .dash-content .boxes{
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .dash-content .boxes .box{
            display: flex;
            flex-direction: column;
            align-items: center;
            border-radius: 12px;
            width: calc(100% / 3 - 15px);
            padding: 15px 20px;
            background-color: var(--box1-color);
            transition: var(--tran-05);
        }
        .boxes .box i{
            font-size: 35px;
            color: var(--text-color);
        }
        .boxes .box .text{
            white-space: nowrap;
            font-size: 18px;
            font-weight: 500;
            color: var(--text-color);
        }
        .boxes .box .number{
            font-size: 40px;
            font-weight: 500;
            color: var(--text-color);
        }
        .boxes .box.box2{
            background-color: var(--box2-color);
        }
        .boxes .box.box3{
            background-color: var(--box3-color);
        }
        .dash-content .activity .activity-data{
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }
        .activity .activity-data{
            display: flex;
        }
        .activity-data .data{
            display: flex;
            flex-direction: column;
            margin: 0 15px;
        }
        .activity-data .data-title{
            font-size: 20px;
            font-weight: 500;
            color: var(--text-color);
        }
        .activity-data .data .data-list{
            font-size: 18px;
            font-weight: 400;
            margin-top: 20px;
            white-space: nowrap;
            color: var(--text-color);
        }
        @media (max-width: 1000px) {
            nav{
                width: 73px;
            }
            nav.close{
                width: 250px;
            }
            nav .logo_name{
                opacity: 0;
                pointer-events: none;
            }
            nav.close .logo_name{
                opacity: 1;
                pointer-events: auto;
            }
            nav li a .link-name{
                opacity: 0;
                pointer-events: none;
            }
            nav.close li a .link-name{
                opacity: 1;
                pointer-events: auto;
            }
            nav ~ .dashboard{
                left: 73px;
                width: calc(100% - 73px);
            }
            nav.close ~ .dashboard{
                left: 250px;
                width: calc(100% - 250px);
            }
            nav ~ .dashboard .top{
                left: 73px;
                width: calc(100% - 73px);
            }
            nav.close ~ .dashboard .top{
                left: 250px;
                width: calc(100% - 250px);
            }
            .activity .activity-data{
                overflow-X: scroll;
            }
        }
        @media (max-width: 780px) {
            .dash-content .boxes .box{
                width: calc(100% / 2 - 15px);
                margin-top: 15px;
            }
        }
        @media (max-width: 560px) {
            .dash-content .boxes .box{
                width: 100% ;
            }
        }
        @media (max-width: 500px) {
            .dashboard .top .sidebar-toggle{
                display: none;
            }
        }
        .images{
            max-width: 30px;
            height: auto;
        }
		.search-box h1{
			margin-left: 300px;
		}
        /* css for table */
        
        table {
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			text-align: left;
			padding: 8px;
			border-bottom: 1px solid #ddd;
		}
		th {
			background-color: #4CAF50;
			color: white;
		}
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
    </style>
    <style>

            .hidden {
                display: none;
            }

            .pagination-container {

                margin-top: 568px;
                width: 100%;
                /* width: calc(100% - 2rem); */
                display: flex;
                align-items: center;
                position: absolute;
                bottom: 0;
                padding: 1rem 0;
                justify-content: center;
                height: fit-content;
            }


            .pagination-number,
            .pagination-button{
                font-size: 1.1rem;
                background-color: transparent;
                border: none;
                margin: 0.25rem 0.25rem;
                cursor: pointer;
                height: 2.5rem;
                width: 2.5rem;
                border-radius: .2rem;
                color: #dfdfdf;
            }

            .pagination-number:hover,
            .pagination-button:not(.disabled):hover {
                background: #767676;
            }

            .pagination-number.active {
                color: #fff;
                background: #e37100;
            }

        </style>


    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>User Dashboard Panel</title>
</head>
<body>

    <nav>
        <div class="logo-name">
            <div class="images">
                <!--                <img src="images/logo1.png" alt="">-->
            </div>

            <span class="logo_name"></span>
        </div>

        <div class="menu-items">
            <ul class="nav-links">
                <li><a href="#">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Dashboard</span>
                </a></li>
                <li><a href="#">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">List User</span>
                </a></li>
                <li><a href="../uploadfiles.jsp">
                    <i class="uil uil-chart"></i>
                    <span class="link-name">Add Room</span>
                </a></li>
                <!-- <li><a href="help.jsp">
                    <i class="uil uil-thumbs-up"></i>
                    <span class="link-name">Help</span>
                </a></li> -->
                <li><a href="#">
                    <i class="uil uil-files-landscapes"></i>
                    <span class="link-name">Bookings</span>
                </a></li>
                

            </ul>

            <ul class="logout-mode">
                <li><a href="logout.jsp">
                    <i class="uil uil-signout"></i>
                    <span class="link-name">Logout</span>
                </a></li>

                <li class="mode">
                    <a href="#">
                        <i class="uil uil-moon"></i>
                        <span class="link-name">Dark Mode</span>
                    </a>

                    <div class="mode-toggle">
                        <span class="switch"></span>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <section class="dashboard">
        <div class="top">
           <h1>Room Lists</h1>

            
        </div>

         <div class="dash-content">
            
	<table>
		<thead>

			<tr>
				<th>ID</th>
				<th>Room Title</th>
				<th>Room Location</th>
				<th>Room Size</th>
                                <th>Room Price</th>
                                <th>Description</th>
                                 <th> Action</th>
				
			</tr>
		</thead>
		 <tbody id="paginated-list" data-current-page="1" aria live="polite">
            <c:forEach items="${RoomList}" var="student">
			<tr>
				<td>${student.roomid}</td>
                                <td>${student.roomtitle}</td>
                                <td>${student.roomlocation}</td>
                                <td>${student.roomsize}</td>
                                <td>${student.roomprice}</td>
                                <td>${student.roomdescription}</td>
                <td><a href="user?page=roomDetails&id=${student.roomid}">View Details</a>
                </td>
				
			</tr>
        </c:forEach>
		
		</tbody>
	</table>
            
        </div>
        <nav class="pagination-container">
                <button class="pagination-button" id="prev-button" aria-label="Previous page" title="Previous page">
                    &lt;
                </button>

                <div id="pagination-numbers">
                </div>

                <button class="pagination-button" id="next-button" aria-label="Next page" title="Next page">
                    &gt;
                </button>
            </nav>
    </section>
    <script>
        const body = document.querySelector("body"),
            modeToggle = body.querySelector(".mode-toggle");
        sidebar = body.querySelector("nav");
        sidebarToggle = body.querySelector(".sidebar-toggle");
        let getMode = localStorage.getItem("mode");
        if(getMode && getMode ==="dark"){
            body.classList.toggle("dark");
        }
        let getStatus = localStorage.getItem("status");
        if(getStatus && getStatus ==="close"){
            sidebar.classList.toggle("close");
        }
        modeToggle.addEventListener("click", () =>{
            body.classList.toggle("dark");
            if(body.classList.contains("dark")) {
                localStorage.setItem("mode", "dark");
            }else{
                localStorage.setItem("mode", "light");
            }
        });
        sidebarToggle.addEventListener("click", () => {
            sidebar.classList.toggle("close");
            if(sidebar.classList.contains("close")){
                localStorage.setItem("status", "close");
            }else{
                localStorage.setItem("status", "open");
            }
        })
    </script>
<script>
            const paginationNumbers = document.getElementById("pagination-numbers");
            const paginatedList = document.getElementById("paginated-list");
            const listItems = paginatedList.querySelectorAll("tr");
            const nextButton = document.getElementById("next-button");
            const prevButton = document.getElementById("prev-button");

            const paginationLimit = 10
            const pageCount = Math.ceil(listItems.length / paginationLimit);
            let currentPage = 1;

            const disableButton = (button) => {
                button.classList.add("disabled");
                button.setAttribute("disabled", true);
            };

            const enableButton = (button) => {
                button.classList.remove("disabled");
                button.removeAttribute("disabled");
            };

            const handlePageButtonsStatus = () => {
                if (currentPage === 1) {
                    disableButton(prevButton);
                } else {
                    enableButton(prevButton);
                }

                if (pageCount === currentPage) {
                    disableButton(nextButton);
                } else {
                    enableButton(nextButton);
                }
            };

            const handleActivePageNumber = () => {
                document.querySelectorAll(".pagination-number").forEach((button) => {
                    button.classList.remove("active");
                    const pageIndex = Number(button.getAttribute("page-index"));
                    if (pageIndex == currentPage) {
                        button.classList.add("active");
                    }
                });
            };

            const appendPageNumber = (index) => {
                const pageNumber = document.createElement("button");
                pageNumber.className = "pagination-number";
                pageNumber.innerHTML = index;
                pageNumber.setAttribute("page-index", index);
                pageNumber.setAttribute("aria-label", "Page " + index);

                paginationNumbers.appendChild(pageNumber);
            };

            const getPaginationNumbers = () => {
                for (let i = 1; i <= pageCount; i++) {
                    appendPageNumber(i);
                }
            };

            const setCurrentPage = (pageNum) => {
                currentPage = pageNum;

                handleActivePageNumber();
                handlePageButtonsStatus();

                const prevRange = (pageNum - 1) * paginationLimit;
                const currRange = pageNum * paginationLimit;

                listItems.forEach((item, index) => {
                    item.classList.add("hidden");
                    if (index >= prevRange && index < currRange) {
                        item.classList.remove("hidden");
                    }
                });
            };

            window.addEventListener("load", () => {
                getPaginationNumbers();
                setCurrentPage(1);

                prevButton.addEventListener("click", () => {
                    setCurrentPage(currentPage - 1);
                });

                nextButton.addEventListener("click", () => {
                    setCurrentPage(currentPage + 1);
                });

                document.querySelectorAll(".pagination-number").forEach((button) => {
                    const pageIndex = Number(button.getAttribute("page-index"));

                    if (pageIndex) {
                        button.addEventListener("click", () => {
                            setCurrentPage(pageIndex);
                        });
                    }
                });
            });
        </script>


</body>
</html>