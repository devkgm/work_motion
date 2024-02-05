<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css"
    integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc="
    crossorigin="anonymous"
/>
<link
    rel="stylesheet"
    href="/resources/css/project/createTask.css"
    type="text/css"
/>
<style>
    #container {
        height: 100%;
        display: flex;
        width: 100%;
        flex-direction: row;
        font-family: "Noto Sans KR", sans-serif;
    }
    .section {
        width: 100%;
        overflow: scroll;
    }
    .section .projectInfo {
        width: 100%;
        background-color: white;
    }
    .section .projectInfo .top {
        display: flex;
        justify-content: space-between;
    }
    .section .projectInfo .head {
        display: flex;
        flex-direction: column;
    }
    .section .projectInfo .body {
        margin: 0px;
        display: flex;
        margin-left: 4vh;
    }
    .section .projectInfo .body a {
        margin-right: 2vh;
        text-decoration: none;
    }
    .section .projectInfo .body a:link {
        color: black;
    }
    .section .projectInfo .body a:visited {
        color: black;
    }

    .section .title {
        font-size: xx-large;
        font-weight: 900;
    }
    .article {
        display: flex;
        justify-content: space-around;
        background-color: #f5f4f4;
    }
    .article #taskContentSection {
        min-width: 60%;
    }
    .article .side {
        background-color: white;
        margin-top: 100px;
        width: 40vh;
        height: 500px;
    }
    .taskCard {
        background-color: white;
        margin: 10px;
        border-radius: 20px;
        border: 1px solid #c8c8c882;
    }
    .taskCard .cardHead {
        display: flex;
        flex-direction: column;
        padding: 10px;
    }
    .taskCard .cardBody {
        padding: 10px;
    }
    #crewList {
        max-height: 31vh;
        overflow: auto;
    }
</style>
<div id="container">
    <div class="section">
        <div class="projectInfo mb-3" data-bs-projectId="${project.id}">
            <div class="top p-3">
                <div class="head">
                    <span class="title"> ${project.name}</span>
                    <span class="info">${project.info}</span>
                </div>

                <div>
                    <a
                        class="btn btn-primary"
                        href="/projects/setting?id=${project.id}"
                        >설정</a
                    >
                    <a
                        class="btn btn-primary"
                        href="/tasks/create?id=${project.id}"
                        >업무 추가</a
                    >
                    <button
                        class="btn btn-primary"
                        id="addCrewButton"
                        data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop"
                    >
                        멤버 추가
                    </button>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <!-- end col-->

                <div class="col-xl-7">
                    <div class="card">
                        <div class="card-body">
                            <!-- comment box -->
                            <form action="#" class="comment-area-box mb-3">
                                <span class="input-icon">
                                    <textarea
                                        rows="3"
                                        class="form-control"
                                        placeholder="Write something..."
                                    ></textarea>
                                </span>
                                <div class="comment-area-btn">
                                    <div class="float-end">
                                        <button
                                            type="submit"
                                            class="btn btn-sm btn-dark waves-effect waves-light"
                                        >
                                            Post
                                        </button>
                                    </div>
                                    <div>
                                        <a
                                            href="#"
                                            class="btn btn-sm btn-light text-black-50"
                                            ><i class="far fa-user"></i
                                        ></a>
                                        <a
                                            href="#"
                                            class="btn btn-sm btn-light text-black-50"
                                            ><i class="fa fa-map-marker-alt"></i
                                        ></a>
                                        <a
                                            href="#"
                                            class="btn btn-sm btn-light text-black-50"
                                            ><i class="fa fa-camera"></i
                                        ></a>
                                        <a
                                            href="#"
                                            class="btn btn-sm btn-light text-black-50"
                                            ><i class="far fa-smile"></i
                                        ></a>
                                    </div>
                                </div>
                            </form>
                            <!-- end comment box -->

                            <!-- Story Box-->
                            <div class="border border-light p-2 mb-3">
                                <div class="d-flex align-items-start">
                                    <img
                                        class="me-2 avatar-sm rounded-circle"
                                        src="https://bootdey.com/img/Content/avatar/avatar4.png"
                                        alt="Generic placeholder image"
                                    />
                                    <div class="w-100">
                                        <h5 class="">
                                            Thelma Fridley
                                            <small class="text-muted">
                                                1 hour ago</small
                                            >
                                        </h5>
                                        <div class="">
                                            Cras sit amet nibh libero, in
                                            gravida nulla. Nulla vel metus
                                            scelerisque ante sollicitudin. Cras
                                            purus odio, vestibulum in vulputate
                                            at, tempus viverra turpis. Duis
                                            sagittis ipsum. Praesent mauris.
                                            Fusce nec tellus sed augue semper
                                            porta. Mauris massa.
                                            <br />
                                            <a
                                                href="javascript: void(0);"
                                                class="text-muted font-13 d-inline-block mt-2"
                                                ><i class="mdi mdi-reply"></i>
                                                Reply</a
                                            >
                                        </div>
                                    </div>
                                </div>

                                <div class="post-user-comment-box">
                                    <div class="d-flex align-items-start">
                                        <img
                                            class="me-2 avatar-sm rounded-circle"
                                            src="https://bootdey.com/img/Content/avatar/avatar3.png"
                                            alt="Generic placeholder image"
                                        />
                                        <div class="w-100">
                                            <h5 class="mt-0">
                                                Jeremy Tomlinson
                                                <small class="text-muted"
                                                    >3 hours ago</small
                                                >
                                            </h5>
                                            Nice work, makes me think of The
                                            Money Pit.

                                            <br />
                                            <a
                                                href="javascript: void(0);"
                                                class="text-muted font-13 d-inline-block mt-2"
                                                ><i class="mdi mdi-reply"></i>
                                                Reply</a
                                            >

                                            <div
                                                class="d-flex align-items-start mt-3"
                                            >
                                                <a class="pe-2" href="#">
                                                    <img
                                                        src="https://bootdey.com/img/Content/avatar/avatar4.png"
                                                        class="avatar-sm rounded-circle"
                                                        alt="Generic placeholder image"
                                                    />
                                                </a>
                                                <div class="w-100">
                                                    <h5 class="mt-0">
                                                        Kathleen Thomas
                                                        <small
                                                            class="text-muted"
                                                            >5 hours ago</small
                                                        >
                                                    </h5>
                                                    i'm in the middle of a
                                                    timelapse animation myself!
                                                    (Very different though.)
                                                    Awesome stuff.
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="d-flex align-items-start mt-2">
                                        <a class="pe-2" href="#">
                                            <img
                                                src="https://bootdey.com/img/Content/avatar/avatar1.png"
                                                class="rounded-circle"
                                                alt="Generic placeholder image"
                                                height="31"
                                            />
                                        </a>
                                        <div class="w-100">
                                            <input
                                                type="text"
                                                id="simpleinput"
                                                class="form-control border-0 form-control-sm"
                                                placeholder="Add comment"
                                            />
                                        </div>
                                    </div>
                                </div>

                                <div class="mt-2">
                                    <a
                                        href="javascript: void(0);"
                                        class="btn btn-sm btn-link text-danger"
                                        ><i class="mdi mdi-heart"></i> Like
                                        (28)</a
                                    >
                                    <a
                                        href="javascript: void(0);"
                                        class="btn btn-sm btn-link text-muted"
                                        ><i class="mdi mdi-share-variant"></i>
                                        Share</a
                                    >
                                </div>
                            </div>

                            <!-- Story Box-->
                            <div class="border border-light p-2 mb-3">
                                <div class="d-flex align-items-start">
                                    <img
                                        class="me-2 avatar-sm rounded-circle"
                                        src="https://bootdey.com/img/Content/avatar/avatar3.png"
                                        alt="Generic placeholder image"
                                    />
                                    <div class="w-100">
                                        <h5 class="m-0">Jeremy Tomlinson</h5>
                                        <p class="text-muted">
                                            <small>about 2 minuts ago</small>
                                        </p>
                                    </div>
                                </div>
                                <p>
                                    Story based around the idea of time lapse,
                                    animation to post soon!
                                </p>

                                <img
                                    src="https://www.bootdey.com/image/800x540/FF7F50/000000"
                                    alt="post-img"
                                    class="rounded me-1"
                                    height="60"
                                />
                                <img
                                    src="https://www.bootdey.com/image/800x540/FF7F50/000000"
                                    alt="post-img"
                                    class="rounded me-1"
                                    height="60"
                                />
                                <img
                                    src="https://www.bootdey.com/image/800x540/FF7F50/000000"
                                    alt="post-img"
                                    class="rounded"
                                    height="60"
                                />

                                <div class="mt-2">
                                    <a
                                        href="javascript: void(0);"
                                        class="btn btn-sm btn-link text-muted"
                                        ><i class="mdi mdi-reply"></i> Reply</a
                                    >
                                    <a
                                        href="javascript: void(0);"
                                        class="btn btn-sm btn-link text-muted"
                                        ><i class="mdi mdi-heart-outline"></i>
                                        Like</a
                                    >
                                    <a
                                        href="javascript: void(0);"
                                        class="btn btn-sm btn-link text-muted"
                                        ><i class="mdi mdi-share-variant"></i>
                                        Share</a
                                    >
                                </div>
                            </div>

                            <!-- Story Box-->
                            <div class="border border-light p-2 mb-3">
                                <div class="d-flex align-items-start">
                                    <img
                                        class="me-2 avatar-sm rounded-circle"
                                        src="https://bootdey.com/img/Content/avatar/avatar6.png"
                                        alt="Generic placeholder image"
                                    />
                                    <div class="w-100">
                                        <h5 class="m-0">Jeremy Tomlinson</h5>
                                        <p class="text-muted">
                                            <small>15 hours ago</small>
                                        </p>
                                    </div>
                                </div>
                                <p>
                                    The parallax is a little odd but O.o that
                                    house build is awesome!!
                                </p>

                                <iframe
                                    src="https://player.vimeo.com/video/87993762"
                                    height="300"
                                    class="img-fluid border-0"
                                ></iframe>
                            </div>

                            <div class="text-center">
                                <a
                                    href="javascript:void(0);"
                                    class="text-danger"
                                    ><i
                                        class="mdi mdi-spin mdi-loading me-1"
                                    ></i>
                                    Load more
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- end card-->
                </div>
                <div class="col-xl-5">
                    <!-- end card-->
                    <div class="card">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <a
                                    href="#"
                                    class="dropdown-toggle arrow-none card-drop"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                >
                                    <i class="mdi mdi-dots-vertical"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Sales Report</a
                                    >
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Export Report</a
                                    >
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Profit</a
                                    >
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Action</a
                                    >
                                </div>
                            </div>

                            <h4 class="header-title mb-3">
                                프로젝트 멤버
                                <i class="mdi mdi-account-multiple ms-1"></i>
                            </h4>

                            <div class="list-group" id="crewList">
                                <c:forEach items="${crews}" var="crew">
                                    <button
                                        class="list-group-item list-group-item-action"
                                        data-bs-toggle="modal"
                                        data-bs-target="#profileModal"
                                        data-bs-memberId="${crew.id}"
                                        onclick="createProfile(${crew.id})"
                                    >
                                        <div
                                            class="d-flex align-items-center pb-1"
                                            id="tooltips-container"
                                        >
                                            <img
                                                src="https://bootdey.com/img/Content/avatar/avatar5.png"
                                                class="rounded-circle img-fluid avatar-md img-thumbnail bg-transparent"
                                                alt=""
                                            />
                                            <div class="w-100 ms-2">
                                                <h5 class="mb-1">
                                                    ${crew.name}<i
                                                        class="mdi mdi-check-decagram text-info ms-1"
                                                    ></i>
                                                </h5>
                                                <p
                                                    class="mb-0 font-13 text-muted"
                                                >
                                                    ${crew.position.name}
                                                </p>
                                            </div>
                                            <i
                                                class="mdi mdi-chevron-right h2"
                                            ></i>
                                        </div>
                                    </button>
                                </c:forEach>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <a
                                    href="#"
                                    class="dropdown-toggle arrow-none card-drop"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                >
                                    <i class="mdi mdi-dots-vertical"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Sales Report</a
                                    >
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Export Report</a
                                    >
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Profit</a
                                    >
                                    <!-- item-->
                                    <a
                                        href="javascript:void(0);"
                                        class="dropdown-item"
                                        >Action</a
                                    >
                                </div>
                            </div>

                            <h4 class="header-title mb-3">
                                Upcoming Reminders
                                <i class="mdi mdi-adjust ms-1"></i>
                            </h4>

                            <div class="list-group">
                                <a href="#" class="my-1">
                                    <div
                                        class="d-flex align-items-start"
                                        id="tooltips-container"
                                    >
                                        <div class="">
                                            <i
                                                class="mdi mdi-circle h3 text-primary"
                                            ></i>
                                        </div>
                                        <div class="w-100 ms-2">
                                            <h5 class="mb-1 mt-0">
                                                New Admin Layout Discuss
                                            </h5>
                                            <ul
                                                class="list-inline text-muted font-12"
                                            >
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-calendar-blank-outline me-1"
                                                    ></i
                                                    >10 May 2021
                                                </li>
                                                <li class="list-inline-item">
                                                    -
                                                </li>
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-clock-time-eight-outline me-1"
                                                    ></i
                                                    >09:00am
                                                    <span class="px-1">To</span>
                                                    10:30am
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="my-1">
                                    <div
                                        class="d-flex align-items-start"
                                        id="tooltips-container"
                                    >
                                        <div class="">
                                            <i
                                                class="mdi mdi-circle h3 text-pink"
                                            ></i>
                                        </div>
                                        <div class="w-100 ms-2">
                                            <h5 class="mb-1 mt-0">
                                                Landing Pages Planning
                                            </h5>
                                            <ul
                                                class="list-inline text-muted font-12"
                                            >
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-calendar-blank-outline me-1"
                                                    ></i
                                                    >10 May 2021
                                                </li>
                                                <li class="list-inline-item">
                                                    -
                                                </li>
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-clock-time-eight-outline me-1"
                                                    ></i
                                                    >02:00pm
                                                    <span class="px-1">To</span>
                                                    4:00pm
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="my-1">
                                    <div
                                        class="d-flex align-items-start"
                                        id="tooltips-container"
                                    >
                                        <div class="">
                                            <i
                                                class="mdi mdi-circle h3 text-success"
                                            ></i>
                                        </div>
                                        <div class="w-100 ms-2">
                                            <h5 class="mb-1 mt-0">
                                                Meet Our Clients
                                            </h5>
                                            <ul
                                                class="list-inline text-muted font-12"
                                            >
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-calendar-blank-outline me-1"
                                                    ></i
                                                    >11 May 2021
                                                </li>
                                                <li class="list-inline-item">
                                                    -
                                                </li>
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-clock-time-eight-outline me-1"
                                                    ></i
                                                    >08:00am
                                                    <span class="px-1">To</span>
                                                    11:20am
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="my-1">
                                    <div
                                        class="d-flex align-items-start"
                                        id="tooltips-container"
                                    >
                                        <div class="">
                                            <i
                                                class="mdi mdi-circle h3 text-warning"
                                            ></i>
                                        </div>
                                        <div class="w-100 ms-2">
                                            <h5 class="mb-1 mt-0">
                                                Project Discussion
                                            </h5>
                                            <ul
                                                class="list-inline text-muted font-12"
                                            >
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-calendar-blank-outline me-1"
                                                    ></i
                                                    >11 May 2021
                                                </li>
                                                <li class="list-inline-item">
                                                    -
                                                </li>
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-clock-time-eight-outline me-1"
                                                    ></i
                                                    >12:00am
                                                    <span class="px-1">To</span>
                                                    03:00am
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="my-1">
                                    <div
                                        class="d-flex align-items-start"
                                        id="tooltips-container"
                                    >
                                        <div class="">
                                            <i
                                                class="mdi mdi-circle h3 text-dark"
                                            ></i>
                                        </div>
                                        <div class="w-100 ms-2">
                                            <h5 class="mb-1 mt-0">
                                                Businees Meeting
                                            </h5>
                                            <ul
                                                class="list-inline text-muted font-12"
                                            >
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-calendar-blank-outline me-1"
                                                    ></i
                                                    >12 May 2021
                                                </li>
                                                <li class="list-inline-item">
                                                    -
                                                </li>
                                                <li class="list-inline-item">
                                                    <i
                                                        class="mdi mdi-clock-time-eight-outline me-1"
                                                    ></i
                                                    >08:30am
                                                    <span class="px-1">To</span>
                                                    10:00am
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row-->
        </div>
        <!-- <div class="article">
            <div class="content mt-3" id="taskContentSection">
                <c:forEach items="${tasks}" var="task">
                    <div class="taskCard">
                        <div class="cardHead">
                            <span class="title">${task.name}</span>
                            <span class="date">${task.create_dt}</span>
                        </div>
                        <hr>
                        <div class="cardBody">${task.content}</div>
                    </div>
                </c:forEach>
            </div>
            <div class="side d-none d-xl-block overflow-auto" id="projectMemberList">
                <c:forEach items="${crews}" var="crew">
                    <div class="memberCard">
                        <div class="avatar">
                        </div>
                        <div class="info">
                            <div class="name">${crew.name}</div>
                            <div class="role">${crew.position.name}</div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div> -->
    </div>
</div>

<!-- Modal -->
<div
    class="modal fade"
    id="staticBackdrop"
    data-bs-backdrop="static"
    data-bs-keyboard="false"
    tabindex="-1"
    aria-labelledby="staticBackdropLabel"
    aria-hidden="true"
>
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">
                    멤버 추가
                </h1>
                <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                ></button>
            </div>
            <div class="modal-body" id="modalBody"></div>
            <div class="modal-footer">
                <button
                    type="button"
                    class="btn btn-secondary"
                    data-bs-dismiss="modal"
                >
                    닫기
                </button>
                <button
                    type="button"
                    class="btn btn-primary"
                    id="submitButton"
                    data-bs-dismiss="modal"
                >
                    추가하기
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div
    class="modal fade"
    id="profileModal"
    data-bs-backdrop="static"
    data-bs-keyboard="false"
    tabindex="-1"
    aria-labelledby="profileModal"
    aria-hidden="true"
>
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="profileModal">프로필</h1>
                <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                ></button>
            </div>
            <div class="modal-body" id="profileBody"></div>
            <div class="modal-footer">
                <button
                    type="button"
                    class="btn btn-secondary"
                    data-bs-dismiss="modal"
                >
                    닫기
                </button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/resources/js/task.js"></script>
<script type="text/javascript">
    //높이 리사이즈
    const taskContentSeciton = document.getElementById("container");
    const firstHeight = window.innerHeight;
    container.style.height = firstHeight - 125 + "px";

    let currentProject = null;

    window.addEventListener("resize", () => {
        const afterHeight = window.innerHeight;
        const diff = afterHeight - firstHeight;
        const parent = document.getElementById("container").parentElement;
        container.style.height = firstHeight + diff - 125 + "px";
    });
</script>
