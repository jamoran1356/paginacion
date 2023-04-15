<?php

require_once 'connect.php';

class paginacion {
    private $conexion;

    public function __construct() {
        $this->conexion = new ConexionBDD();
        $this->conexion = $this->conexion->connect();
    }

    public function obtener_registros($inicio, $registro){
        $sql = "SELECT  * FROM registros ORDER BY id ASC LIMIT $inicio, $registro";
        $stmt = $this->conexion->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll();
        return $data;
    }

    public function obtener_numero_paginas(){
        $sql = "SELECT COUNT(*) as total FROM registros";
        $stmt = $this->conexion->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchColumn();
        return $data;
    }
}



?>