<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
</head>
<body>
<!-- ///////////displaying the admin username/////////// -->
<?php if(isset($username)): ?>
        <h2>Welcome <?php echo $username; ?></h2>
    <?php endif; ?>


    <table class="table" id="data-table"> 
        <tbody id="table-body">
                    
        </tbody>
    </table>

    

<!-- ///////////Buttn(to Load more button)//////////////////-->
<div id="load-more-container">
    <button id="load-pre-button">Prev</button>
    <button id="current_button"><?php echo isset($_POST['page']) ? htmlspecialchars($_POST['page']) : 'Default Text'; ?></button>
    <button id="load-more-button">Next</button>
</div>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script>
    var page = 0;
    var maxPageForStudent = <?php echo $max_page_for_student; ?>;
    $(document).ready(function () {
        loadMoreData();
        function loadMoreData() {
                        //for current page index check
                        console.log(page);
                        if(page<maxPageForStudent){
                        page++;//to increase the page
                        }
                        //for next page index
                        console.log(page);
            $.ajax({
                type: 'GET',
                url: '<?= base_url('index.php/home/get_table_data'); ?>/' + page,
                success: function (data) {
                    if (data.trim() !== '') {
                        
                        $('#table-body').empty();
                        $('#table-body').append(data);

                        $('#current_button').text(page);
                        
                        
                    } else {
                        alert('No more data available.');
                    }
                },
                error: function (xhr, status, error) {
                    console.error('AJAX Error:', status, error);
                }
            });
        }

        function loadPreData() {
            //for current page index check
                        console.log(page);
                        if(page>1){
                        page--;//to decrease the page
                        }
                        //for next page index
                        console.log(page);
                        
            $.ajax({
                
                type: 'GET',
                url: '<?= base_url('index.php/home/get_table_data'); ?>/' + page,
                success: function (data) {
                    if (data.trim() !== '') {
                        
                        console.log(page);
                        $('#table-body').empty();
                        $('#table-body').append(data);

                        $('#current_button').text(page);
                        
                        
                    } else {
                        alert('No more data available.');
                    }
                },
                error: function (xhr, status, error) {
                    console.error('AJAX Error:', status, error);
                }
            });
        }


        // Load more data on button click
        $('#load-more-button').on('click', function () {
            loadMoreData();
        });

        $('#load-pre-button').on('click', function () {
            loadPreData();
        });
    });
</script>


    
</body>
</html>