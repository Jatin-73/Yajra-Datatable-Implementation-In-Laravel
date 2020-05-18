$(document).ready(function(){

  $('#user_table').DataTable({
    processing: true,
    serverSide: true,
    ajax: {
      url: "{{ route('manage-status.index') }}",
    },
    columns: [
    {
      data: 'name',
      name: 'name'
    },
    {
      data: 'order_status',
      name: 'order_status'
    },
    {
      data: 'action',
      name: 'action',
      orderable: false
    }
    ]
  });

});