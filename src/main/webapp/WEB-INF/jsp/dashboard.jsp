<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include/header.jsp" />
<jsp:include page="include/navbar.jsp" />


<link rel="stylesheet" href="${pageContext.request.contextPath}/pub/css/dashboard.css">


<main class="main">

    <div class="dashboard-panel-responsive-wrapper">
        <div class="dashboard-panel-content">
            <div class="dashboard-content-panel">
                <div class="dashboard-panel-vertical-tabs">
                    <a class="dashboard-panel-item" href="${pageContext.request.contextPath}/dashboard">Animals</a>
                    <a class="dashboard-panel-item"  href="${pageContext.request.contextPath}/dashboard">Users</a>
                    <a class="dashboard-panel-item"  href="${pageContext.request.contextPath}/dashboard">Organizations</a>
                </div>
            </div>
            <div class="content-main">

            </div>
        </div>
    </div>
</main>

<jsp:include page="include/footer.jsp" />

<script>
document.addEventListener('DOMContentLoaded', function() {
    const tabs = document.querySelectorAll('.dashboard-panel-vertical-tabs a');
    const contentMain = document.querySelector('.content-main');

    const tabContent = {
        'Animals': `

<button id="addRowButton" class="btn btn-primary dashboard-btn">Add Row</button>

<table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
	<thead>
		<tr>
			<th>ID</th>
            <th>Status</th>
            <th>Create_Date</th>
			<th>Animal Type</th>
            <th>Breed</th>
			<th>Name</th>
			<th>Age</th>
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
                                    <td>${animal.age}</td>
                                    <td>${animal.organizationId}</td>
                                </tr>
   </c:forEach>
	</tbody>
</table>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Row information</h4>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

        `,
        'Users': `


<table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
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

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close dashboard-btn" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Row information</h4>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

        `,

        'Organizations': `

     <table id="dashboard-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
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

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close dashboard-btn" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Row information</h4>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default dashboard-btn" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


        `    };

    tabs.forEach(tab => {
        tab.addEventListener('click', function(event) {
            event.preventDefault();
            tabs.forEach(t => t.classList.remove('active'));
            tab.classList.add('active');
            const tabName = tab.textContent.trim();
            contentMain.innerHTML = tabContent[tabName] || '<p>Content not found</p>';
        });
    });


    if (tabs.length > 0) {
        tabs[0].click();
    }
});

</script>



<script src="${pageContext.request.contextPath}pub/js/dashboard.js"></script>

