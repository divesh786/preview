$(document).ready(function() {


    // Detect pagination click
    $('#pagination').on('click', 'a', function(e) {
        e.preventDefault();
        var pageno = $(this).attr('data-ci-pagination-page');
        loadPagination(pageno);
    });

    loadPagination(0);




    $(".preview").click(function() {
        let res = $('#urlinput').val();
        jQuery.ajax({
            url: base_url + "Preview/generatePreview",
            type: 'POST',
            dataType: 'html',
            data: 'url=' + res,
            success: function(response) {
                $('#preview-data').html(response);
                $('.save').css("display", "block");
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError);
            }
        });

    });


});


$(document).on("click", ".save", function() {
    $('.save').css("display", "none");
    $('#urlinput').val('');

    let previewImage = $('#imgdata').attr('src');
    let previewTitle = $('#title').text();
    let previewDescription = $('#description').text();
    let previewUrl = $('#PreviewUrl').text();

    var myData = [];
    myData.push({
        name: 'previewImage',
        value: previewImage
    });
    myData.push({
        name: 'previewTitle',
        value: previewTitle
    });
    myData.push({
        name: 'previewDescription',
        value: previewDescription
    });
    myData.push({
        name: 'previewUrl',
        value: previewUrl
    });



    jQuery.ajax({
        url: base_url + "Preview/save",
        type: 'POST',
        dataType: 'html',
        data: myData,
        success: function(response) {
            $('#preview-data').html('');
            loadPagination(0);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError);
        }
    });

});

function loadPagination(pagno) {
    $.ajax({
        url: base_url + 'Preview/loadRecord/' + pagno,
        type: 'get',
        dataType: 'json',
        success: function(response) {
            //console.log(response);
            $('#pagination').html(response.pagination);
            createTable(response.result, response.row);
        }
    });
}

function createTable(result, sno) {
    sno = Number(sno);
    $('#postsList tbody').empty();
    for (index in result) {
        var id = result[index].id;
        var title = result[index].title != null ? result[index].title : '';
        var content = result[index].content != null ? result[index].content.substr(0, 60) + " ..." : '';
        var link = result[index].link != null ? result[index].link : '';
        sno += 1;



        var tr = "<tr>";
        tr += "<td>" + sno + "</td>";
        tr += "<td>" + title + "</td>";
        tr += "<td><a href='" + link + "' target='_blank' >" + link + "</a></td>";
        tr += "<td>" + content + "</td>";
        tr += "</tr>";
        $('#postsList tbody').append(tr);

    }
}