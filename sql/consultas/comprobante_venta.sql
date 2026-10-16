SELECT 
    v.idVenta,
    v.fecha,
    c.nombre AS nombreCliente,
    c.apellido AS apellidoCliente,
    c.DNI AS dniCliente,
    mp.nombre AS metodoPago,
    p.nombre AS nombreProducto,
    var.talle,
    var.color,
    dv.cantidad,
    dv.precioUnitario,
    (dv.cantidad * dv.precioUnitario) AS subtotalRenglon
FROM VENTA v
LEFT JOIN CLIENTE c ON v.idCliente = c.idCliente
JOIN METODO_PAGO mp ON v.idMetodoPago = mp.idMetodoPago
JOIN DETALLE_VENTA dv ON v.idVenta = dv.idVenta
JOIN VARIANTE var ON dv.idVariante = var.idVariante
JOIN PRODUCTO p ON var.codProducto = p.codProducto
WHERE v.idVenta = 1;
