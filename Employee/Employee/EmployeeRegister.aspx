<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EmployeeRegister.aspx.vb" Inherits="Employee.EmployeeRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<title>Employee Application Form</title>

    <!-- ==================Bootstrap CSS======================= -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background-color: #f5f6fa;
        }

        .form-container {
            max-width: 1000px;
            margin: 40px auto;
        }

        .card {
            border: none;
            border-radius: 12px;
        }

        .card-header {
            border-radius: 12px 12px 0 0 !important;
        }

        .required {
            color: red;
        }

        .table-container {
            margin-top: 30px;
        }
    </style>
</head>
<body>

<form id="form1" runat="server">

    <div class="container form-container">

        <!-- ================= FORM ================= -->

        <div class="card shadow">

            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Employee Application Form</h3>
            </div>

            <div class="card-body">

                <div id="message" class="mb-3"></div>

                <div class="row g-3">

                    <!--==================== Name========================== -->
                    <div class="col-md-6">
                          <label class="form-label">  Name <span class="required">*</span> </label>
                        <asp:TextBox ID="txtName"  runat="server"  CssClass="form-control"  placeholder="Enter name"> </asp:TextBox>
                    </div>


                    <!-- =======================Age=========================== -->
                    <div class="col-md-6">
                        <label class="form-label"> Age <span class="required">*</span></label>
                    <asp:TextBox ID="txtAge"  runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter age"></asp:TextBox>

                    </div>


                    <!-- ==================Gender============================== -->
                    <div class="col-md-6">
                        <label class="form-label">Gender <span class="required">*</span></label>
                        <div class="mt-2">
                            <asp:RadioButton ID="rbMale" runat="server"  GroupName="Gender" Text=" Male" CssClass="me-3" />
                            <asp:RadioButton ID="rbFemale"  runat="server"  GroupName="Gender" Text=" Female" />
                        </div>
                    </div>


                    <!-- ========================Organization========================= -->
                    <div class="col-md-6">
                        <label class="form-label"> Organization Name <span class="required">*</span> </label>
                        <asp:TextBox ID="txtOrganization"  runat="server" CssClass="form-control" placeholder="Enter organization name"> </asp:TextBox>
                    </div>


                    <!-- ===============Designation============================== -->
                    <div class="col-md-6">
                        <label class="form-label">Designation <span class="required">*</span></label>
                        <asp:DropDownList ID="ddlDesignation" runat="server" CssClass="form-select">
                            <asp:ListItem Value=""> -- Select Designation --</asp:ListItem>
                            <asp:ListItem Value="Software Developer">Software Developer</asp:ListItem>
                            <asp:ListItem Value="Senior Software Developer">Senior Software Developer </asp:ListItem>
                            <asp:ListItem Value="Team Leader">Team Leader</asp:ListItem>
                            <asp:ListItem Value="Project Manager">Project Manager</asp:ListItem>
                            <asp:ListItem Value="HR"> HR </asp:ListItem> 
                        </asp:DropDownList>

                    </div>


                  <!-- ===================Skill=========================== -->
<div class="col-md-6">
    <label class="form-label"> Skill <span class="required">*</span></label>
    <div class="dropdown">
        <!-- =======================Dropdown Button============================ -->
        <button type="button" class="btn btn-light border w-100 text-start dropdown-toggle" id="positionDropdown" data-bs-toggle="dropdown" aria-expanded="false"> Select Position </button>


        <!-- =================Dropdown Menu========================= -->
        <div class="dropdown-menu w-100 p-3" aria-labelledby="positionDropdown">
            <!-- ==============Select All================= -->
            <div class="form-check mb-2">
                <input type="checkbox" class="form-check-input" id="selectAllPosition" />
                <label class="form-check-label fw-bold"  for="selectAllPosition"> Select All </label>
            </div>

            <hr />


            <!-- ====================ASP.NET========================== -->
            <div class="form-check mb-2">
                <input type="checkbox" class="form-check-input positionCheck" name="AppliedPosition"  value="ASP.NET Developer" id="aspnet" />
                <label class="form-check-label" for="aspnet"> ASP.NET</label>

            </div>


            <!-- =============================C#================= -->
            <div class="form-check mb-2">
                <input type="checkbox" class="form-check-input positionCheck"  name="AppliedPosition" value="C#" id="csharp" />
                <label class="form-check-label" for="csharp"> C# Developer </label>

            </div>


            <!-- =======================SQL=========================== -->
            <div class="form-check mb-2">
                <input type="checkbox" class="form-check-input positionCheck"  name="AppliedPosition"  value="SQL Developer" id="sql" />
                <label class="form-check-label" for="sql"> SQL </label>

            </div>


            <!-- =====================Angular========================== -->
            <div class="form-check mb-2">

                <input type="checkbox" class="form-check-input positionCheck" name="AppliedPosition" value="Angular Developer" id="angular" />
                <label class="form-check-label" for="angular"> Angular  </label>

            </div>


            <!-- ======================Full Stack============================= -->
            <div class="form-check">

                <input type="checkbox" class="form-check-input positionCheck" name="AppliedPosition" value="Full Stack Developer" id="fullstack" />

                <label class="form-check-label"for="fullstack">Full Stack Developer</label>

            </div>

        </div>

    </div>

</div>
                    <!-- ============================Resume================================= -->
                    <div class="col-md-6">

                        <label class="form-label"> Resume <span class="required">*</span></label>

                        <asp:FileUpload ID="fileResume" runat="server" CssClass="form-control" />

                        <small class="text-muted"> Allowed: PDF, DOC, DOCX </small>

                    </div>


                    <!-- ======================================Email=============================== -->
                    <div class="col-md-6">

                        <label class="form-label"> Email Address <span class="required">*</span> </label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="example@gmail.com"></asp:TextBox>
                    </div>


                    <!-- ==================Phone=============================== -->
                    <div class="col-md-6">
                        <label class="form-label">Phone Number <span class="required">*</span></label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"  MaxLength="10" placeholder="Enter 10 digit phone number"></asp:TextBox>
                    </div>


                    <!-- ===================Submit======================= -->
                    <div class="col-12 text-center mt-4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary px-5" OnClientClick="return validateForm();" />
                    </div>

                </div>

            </div>

        </div>

<!-- =============Employee Data Table============================ -->

<div class="card shadow mt-4">

    <div class="card-header bg-dark text-white">
        <h4 class="mb-0">Employee Application Data</h4>
    </div>

    <div class="card-body">

        <div class="table-responsive">

            <table id="employeeTable"
                   class="table table-bordered table-striped table-hover">

                <thead class="table-dark">

                    <tr>

                        <th>Name</th>

                        <th>Age</th>

                        <th>Gender</th>

                        <th>Organization</th>

                        <th>Designation</th>

                        <th>Applied Position</th>

                        <th>Email</th>

                        <th>Phone</th>
                        <th>Resume</th>
                    </tr>

                </thead>

                <tbody id="employeeTableBody">

                  

                </tbody>

            </table>

        </div>

    </div>

</div>
    </div>

</form>


<!-- ================= JAVASCRIPT ================= -->

<script>

    // ================================PAGE LOAD=====================================

    document.addEventListener("DOMContentLoaded", function () {

        // ===================SELECT ALL====================
        var selectAll =document.getElementById("selectAllPosition");

        if (selectAll) {

            selectAll.addEventListener("change", function () {

                var checkboxes =document.querySelectorAll(".positionCheck");

                for (var i = 0; i < checkboxes.length; i++) {

                    checkboxes[i].checked = this.checked;

                }

                updatePositionText();

            });

        }


        // =================INDIVIDUAL CHECKBOX==============================
        var positionCheckboxes =document.querySelectorAll(".positionCheck");

        for (var i = 0; i < positionCheckboxes.length; i++) {

            positionCheckboxes[i].addEventListener("change",function () {
                    updateSelectAll();
                    updatePositionText();

                }
            );

        }

    });


    // ===================UPDATE SELECT ALL=================================

    function updateSelectAll() {

        var checkboxes = document.querySelectorAll(".positionCheck");

        var selectAll =document.getElementById("selectAllPosition");

        if (!selectAll) {
            return;
        }

        var allChecked = true;

        for (var i = 0; i < checkboxes.length; i++) {

            if (!checkboxes[i].checked) {
                allChecked = false;
                break;

            }

        }

        selectAll.checked = allChecked;

    }


    // ===================SHOW SELECTED POSITIONS==============================

    function updatePositionText() {

        var checkboxes =document.querySelectorAll(".positionCheck");

        var selected = [];

        for (var i = 0; i < checkboxes.length; i++) {

            if (checkboxes[i].checked) {

                selected.push( checkboxes[i].value);

            }

        }

        var button =
            document.getElementById("positionDropdown");

        if (!button) {
            return;
        }

        if (selected.length === 0) {
                button.innerText ="Select Position";

        }
        else if (selected.length === checkboxes.length) {

            button.innerText = "All Positions Selected";

        }
        else {
                button.innerText =selected.join(", ");

        }

    }


    // ==============FORM VALIDATION + ADD DATA=========================================

    function validateForm() {
        // =====================NAME======================================

        var nameElement =document.getElementById('<%= txtName.ClientID %>');

        var name =nameElement.value.trim();

        if (name === "") {
         alert("Please enter name.");
            nameElement.focus();
            return false;

        }

        var namePattern =/^[A-Za-z ]+$/;

        if (!namePattern.test(name)) {
            alert( "Name should contain only letters and spaces.");

            nameElement.focus();

            return false;

        }


        // =========== AGE=========================================

        var ageElement = document.getElementById( '<%= txtAge.ClientID %>');

        var age = ageElement.value.trim();

        if (age === "") {
            alert("Please enter age.");
            ageElement.focus();
            return false;

        }

        var ageNumber =parseInt(age, 10);

        if (
            isNaN(ageNumber) || ageNumber < 18 || ageNumber > 60
        ) {

            alert("Age must be between 18 and 60.");
            ageElement.focus();
            return false;

        }


        // ============GENDER===================================

        var male = document.getElementById( '<%= rbMale.ClientID %>');

        var female =document.getElementById('<%= rbFemale.ClientID %>' );

        if (!male.checked && !female.checked) {

            alert("Please select gender.");
            return false;
        }

        var gender = "";
        if (male.checked) {
            gender = "Male";
        }
        else {
            gender = "Female";
        }


        // ======================ORGANIZATION ==================================

        var organizationElement =document.getElementById('<%= txtOrganization.ClientID %>');
        var organization =organizationElement.value.trim();
        if (organization === "") {
    alert("Please enter organization name.");
            organizationElement.focus();
            return false;

        }


        // =====================DESIGNATION=======================================

        var designationElement =document.getElementById('<%= ddlDesignation.ClientID %>');
        var designation =designationElement.value;
        if (designation === "") {
            alert("Please select designation.");
            designationElement.focus();
            return false;

        }


        // =====================================================APPLIED POSITION===================================

        var positionCheckboxes =document.querySelectorAll(".positionCheck");

        var selectedPositions = [];

        for (
            var i = 0;i < positionCheckboxes.length;i++ ) {

            if (positionCheckboxes[i].checked) {
                selectedPositions.push(positionCheckboxes[i].value
                );

            }

        }

        if (selectedPositions.length === 0) {

            alert("Please select at least one applied position.");
    return false;

        }

        var appliedPosition =selectedPositions.join(", ");


        // ==============================EMAIL============================================

        var emailElement =document.getElementById('<%= txtEmail.ClientID %>');

        var email =emailElement.value.trim();

        if (email === "") {
            alert( "Please enter email address.");
            emailElement.focus();
            return false;

        }

        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!emailPattern.test(email)) {
            alert( "Please enter a valid email address." );
            emailElement.focus();
            return false;

        }


        // =========================PHONE=============================================

        var phoneElement =document.getElementById('<%= txtPhone.ClientID %>');
        var phone =phoneElement.value.trim();
        if (phone === "") {
            alert( "Please enter phone number.");
            phoneElement.focus();
            return false;

        }

        var phonePattern =/^[0-9]{10}$/;

        if (!phonePattern.test(phone)) {
            alert( "Phone number must contain exactly 10 digits." );
            phoneElement.focus();
            return false;

        }


        // ==================RESUME======================

        var resumeElement = document.getElementById('<%= fileResume.ClientID %>');

        if (resumeElement.files.length === 0) {
            alert("Please upload your resume.");
            return false;
        }

        var resumeFile =resumeElement.files[0];

        var resumeName =resumeFile.name;

        var extension =resumeName.substring( resumeName.lastIndexOf(".") + 1).toLowerCase();

        if (extension !== "pdf" && extension !== "doc" && extension !== "docx") {
            alert("Only PDF, DOC and DOCX files are allowed.");
            return false;

        }


        // =====================================================CREATE RESUME URL=================================

        var resumeURL =URL.createObjectURL(resumeFile);

        // ================IMPORTANT: ADD DATA TO TABLE ===================================

        addEmployeeToTable(
            name,
            ageNumber,
            gender,
            organization,
            designation,
            appliedPosition,
            email,
            phone,
            resumeName,
            resumeURL
        );


        // ===========================CLEAR FORM =============================================

        clearForm();
        alert("Employee submitted successfully.");
    return false;

    }


    // ============================ADD EMPLOYEE DATA INTO TABLE ============================================

    function addEmployeeToTable(
        name,
        age,
        gender,
        organization,
        designation,
        appliedPosition,
        email,
        phone,
        resumeName,
        resumeURL
    ) {

        var tableBody =
            document.getElementById("employeeTableBody");

        if (!tableBody) {
    alert("employeeTableBody not found.");
    return;

        }


        //=================== Create row=====================
        var row = tableBody.insertRow();


        // =========== 1. NAME==========================================

        var cell1 = row.insertCell(0);
        cell1.innerText = name;


        // =========== 2. AGE ==============================================

        var cell2 =row.insertCell(1);
        cell2.innerText =age;


        // =================3. GENDER===========================================

        var cell3 =row.insertCell(2);
        cell3.innerText =gender;

        // ===================4. ORGANIZATION========================================

        var cell4 =row.insertCell(3);
        cell4.innerText =organization;


        // ============5. DESIGNATION===================================

        var cell5 =row.insertCell(4);
        cell5.innerText =designation;


        // =========6. APPLIED =========================================

        var cell6 =row.insertCell(5);
        cell6.innerText =appliedPosition;

        // ===========================7. EMAIL=====================================================

        var cell7 =row.insertCell(6);
        var emailLink =document.createElement("a");
        emailLink.href ="mailto:" + email;
        emailLink.innerText =email;
        cell7.appendChild(emailLink);

        // ====== 8. PHONE=====================================================

        var cell8 =row.insertCell(7);
        cell8.innerText =phone;
        var cell9 =row.insertCell(8);
        var resumeLink =document.createElement("a");
        resumeLink.href =resumeURL;
        resumeLink.target ="_blank";
        resumeLink.innerText = "View Resume";
        resumeLink.className ="btn btn-sm btn-primary";
        resumeLink.title =resumeName;
        cell9.appendChild(resumeLink);
    }


    // ===========CLEAR FORM=========================================================

    function clearForm() {

        document.getElementById('<%= txtName.ClientID %>').value = "";

        document.getElementById( '<%= txtAge.ClientID %>').value = "";

        document.getElementById( '<%= rbMale.ClientID %>').checked = false;

        document.getElementById( '<%= rbFemale.ClientID %>' ).checked = false;

        document.getElementById('<%= txtOrganization.ClientID %>').value = "";

        document.getElementById('<%= ddlDesignation.ClientID %>').selectedIndex = 0;

        var checkboxes =document.querySelectorAll(".positionCheck");

        for (var i = 0;i < checkboxes.length;i++) {
            checkboxes[i].checked =
                false;
        }

        document.getElementById("selectAllPosition").checked = false;
        updatePositionText();

            document.getElementById('<%= txtEmail.ClientID %>' ).value = "";

        document.getElementById( '<%= txtPhone.ClientID %>' ).value = "";

        document.getElementById('<%= fileResume.ClientID %>' ).value = "";

    }

</script>

</body>
</html>
