var find_guitar_global_timeout = null;
var test = null;

function find_guitar(){
  var str = $('#guitar_model').val().trim();
  if (find_guitar_global_timeout !=null) clearTimeout(find_guitar_global_timeout);
  find_guitar_global_timeout = setTimeout(search_guitar, 1000);

}
function search_guitar(){
  find_guitar_global_timeout = null;
  $('#search_result').html('');

  var str = $('#guitar_model').val().trim();
  $.get('/guitars/search?q=' + str, function(data){
    $('#search_result').html(data);
  });
}
function guitar_selected(node){
  var guitar = $(node).closest('tr').attr('id');
  $.Dialog.close();
  $('#godown_item_product_data_type').val('Guitar');
  $('#godown_item_product_data_id').val(guitar.slice(7));
}
function goto_find_user(){
  var user_name = $('#order_order_detail_attributes_full_name').val();
  $.getScript(host_path + '/user_infos/find?n=' + user_name);
}

function find_agent(){
  var str = $('#agent_find').val();
  if (str.length < 2 ){
    $('#list_result_agents tr').remove();
    if (find_agent_global_timeout !=null) clearTimeout(find_agent_global_timeout);
  } else {
    if (find_agent_global_timeout !=null) clearTimeout(find_agent_global_timeout);
    find_agent_global_timeout = setTimeout(search_agent, 1000);
  }

}
function search_agent(){
  find_agent_global_timeout = null;
  $('#list_result_agents tr').remove();
  $('#list_result_agents').append('<tr><td colspan=5>Loading...</td></tr>');
  $.get(host_path + '/companies/search_agent?q=' + $('#agent_find').val(), function(data){
    $('#list_result_agents tr').remove();
    $('#list_result_agents').append(data);
    $('#list_result_agents tr').click(function(){
      $.get(host_path + '/companies/' + $(this).attr('tag') + '/edit');
    });
  });
}
function goto_find_agent(){
  //var user_name = $('#order_order_detail_attributes_full_name').val();
  $.getScript(host_path + '/companies/find_agent');
}
