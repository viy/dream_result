//= require active_admin/base
//= require jquery-ui
//= require select2
jQuery(function() {
    if ($(".formtastic .tabbable").length){
        $(".formtastic .tabbable").tabs();
    }
    if ($("#service_tag_list").length){
        $("#service_tag_list").select2({tags:$("#service_tag_list").data("tags"),
                                        tokenSeparators: [",", " "]})
    }
});

