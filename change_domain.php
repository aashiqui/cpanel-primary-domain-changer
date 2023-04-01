// change_domain.php

<?php
header('Content-Type: application/json');

if (isset($_POST['new_domain'])) {
    $new_domain = trim($_POST['new_domain']);

    // Validate and sanitize the domain name
    if (filter_var(gethostbyname($new_domain), FILTER_VALIDATE_IP)) {
        // Execute the script that changes the primary domain
        $output = shell_exec('/usr/local/cpanel/scripts/primary_domain_changer.sh ' . escapeshellarg($new_domain));
        echo json_encode(['result' => $output]);
    } else {
        echo json_encode(['error' => 'Invalid domain name']);
    }
} else {
    echo json_encode(['error' => 'Invalid request']);
}
