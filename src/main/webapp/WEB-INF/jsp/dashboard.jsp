<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include/header.jsp" />
<jsp:include page="include/navbar.jsp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/pub/css/dashboard.css">

<div class="dashboard-btn-container">
    <button id="addRowButton" class="btn dashboard-btn">Add Row</button>
    <button type="submit" form="animalForm" class="btn dashboard-btn">Save</button>
</div>

<main>
    <div class="dashboard-panel-responsive-wrapper">
        <div class="dashboard-panel-content">
            <div class="dashboard-content-panel">
                <div class="dashboard-panel-vertical-tabs">
                    <a class="dashboard-panel-item" href="#" data-tab="animals-content">Animals</a>
                    <a class="dashboard-panel-item" href="#" data-tab="users-content">Users</a>
                    <a class="dashboard-panel-item" href="#" data-tab="organizations-content">Organizations</a>
                </div>
            </div>
            <div class="content-main">
                <form id="animalForm" method="POST" action="${pageContext.request.contextPath}/dashboard">
                    <div id="animals-content" class="dashboard-content" style="display: none;">
                        <table class="table table-striped table-bordered dashboard-table" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Status</th>
                                <th>Create Date</th>
                                <th>Animal Type</th>
                                <th>Breed</th>
                                <th>Name</th>
                                <th>Gender</th>
                                <th>Age</th>
                                <th>Photo URl</th>
                                <th>Organization ID</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${animalList}" var="animal">
                                <tr>
                                    <td>${animal.animalID}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${animal.status == 'available'}">
                                                <span class="status-available">${animal.status}</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="status-unavailable">${animal.status}</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>${animal.createDate}</td>
                                    <td>${animal.animalType}</td>
                                    <td>${animal.breed}</td>
                                    <td>${animal.name}</td>
                                    <td>${animal.gender}</td>
                                    <td>${animal.age}</td>
                                    <td>${animal.photoUrl}</td>
                                    <td>${animal.organizationId}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </form>

                <div id="users-content" class="dashboard-content" style="display: none;">
                    <table class="table table-striped table-bordered dashboard-table" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Profile Created</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${userList}" var="user">
                            <tr>
                                <td>${user.id}</td>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td>${user.email}</td>
                                <td>${user.createDate}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div id="organizations-content" class="dashboard-content" style="display: none;">
                    <table class="table table-striped table-bordered dashboard-table" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Organization Name</th>
                            <th>Location</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${organizationList}" var="organization">
                            <tr>
                                <td>${organization.id}</td>
                                <td>${organization.name}</td>
                                <td>${organization.location}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="include/footer.jsp" />

<script src="${pageContext.request.contextPath}/pub/js/dashboard.js"></script>
