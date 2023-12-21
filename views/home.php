<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
    
</head>
<body>
<!-- ///////////displaying the admin username/////////// -->
<?php if(isset($username)): ?>
        <h2>Welcome <?php echo $username; ?></h2>
    <?php endif; ?>


<!-- displaying the data of the students -->
<center><h2 style="text-decoration: underline;">STUDENT INFORMATION</h2></center>
<div class="table-container" style="margin: 2%;">
    <table class="table">
        <thead>
            <tr>
                <!-- /////////table heading////////////// -->
                <!-- <th>ID</th> -->
                <th>Student ID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Nationality</th>
                <th>Admission Date</th>
                <th>Current Courses Enrolled</th>
                <th>Courdse Fees</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($students as $student): ?>
                <!-- ///////////dynamically fetching table contents///////// -->
                <tr>
                    <!-- <td><?= $student->id ?></td> -->
                    <td><?= $student->StudentID ?></td>
                    <td><?= $student->FullName ?></td>
                    <td><?= $student->Email ?></td>
                    <td><?= $student->PhoneNumber ?></td>
                    <td><?= $student->Address ?></td>
                    <td><?= $student->DateOfBirth ?></td>
                    <td><?= $student->Gender ?></td>
                    <td><?= $student->Nationality ?></td>
                    <td><?= $student->AdmissionDate ?></td>
                    <td><?= $student->CurrentCoursesEnrolled ?></td>
                    <td><?= $student->CourseFees ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <!-- ///////////Pagination for the students data/content view///////// -->
    <?php echo $this->pagination->create_links(); ?>
</div>



    
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
</body>
</html>