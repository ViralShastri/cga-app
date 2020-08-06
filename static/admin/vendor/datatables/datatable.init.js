$("#dataTable").DataTable({
    dom: "Bfrtip",
    buttons: [
        {
            extend: "copyHtml5",
            exportOptions: {
                columns: "thead th:not(.noExport)",
            },
        },
        {
            extend: "excelHtml5",
            exportOptions: {
                columns: "thead th:not(.noExport)",
            },
        },
        {
            extend: "csvHtml5",
            exportOptions: {
                columns: "thead th:not(.noExport)",
            },
        },
        {
            extend: "pdfHtml5",
            exportOptions: {
                columns: "thead th:not(.noExport)",
            },
            orientation: "landscape",
            pageSize: "A2",
        },
    ],
});
