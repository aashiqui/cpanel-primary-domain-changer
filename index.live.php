<!-- index.live.php -->

<!DOCTYPE html>
<html>
<head>
    <title>Change Primary Domain</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <h1>Change Primary Domain</h1>
    <form id="change-domain-form">
        <label for="new_domain">New primary domain:</label>
        <input type="text" id="new_domain" name="new_domain" required>
        <input type="hidden" id="nonce" name="nonce" value="<?php echo md5(uniqid(rand(), true)); ?>">
        <button type="submit">Change Domain</button>
    </form>
    <div id="result"></div>

    <script>
        $('#change-domain-form').on('submit', function (e) {
            e.preventDefault();
            $.post('change_domain.php', $(this).serialize(), function (response) {
                if (response.error) {
                    $('#result').html('<p>Error: ' + response.error + '</p>');
                } else {
                    $('#result').html('<p>Result: ' + response.result + '</p>');
                }
            }, 'json');
        });
    </script>
</body>
</html>
