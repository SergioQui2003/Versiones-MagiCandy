<?php

include("../CRUD/db.php");

// Get the ID of the insumo to be deleted
$id = $_GET['id'];

// Check if the insumo exists
$sql = "SELECT * FROM insumo WHERE pkid_insumo = $id";
$result = $conn->query($sql);

// Check if the insumo exists
if ($result->num_rows == 0) {
    echo "El insumo no existe.";
    exit;
}

// Delete the insumo from the database
$sql = "DELETE FROM insumo WHERE pkid_insumo = $id";
$conn->query($sql);

// Redirect to the main page
header("Location: ../DAHSPAGS/consultarInsumos.php");
