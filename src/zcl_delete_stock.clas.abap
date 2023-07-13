class ZCL_DELETE_STOCK definition
  public
  create public .

public section.

  interfaces IF_HTTP_SERVICE_EXTENSION .
protected section.
private section.
  METHODS delete_stock.
ENDCLASS.



CLASS ZCL_DELETE_STOCK IMPLEMENTATION.


  method IF_HTTP_SERVICE_EXTENSION~HANDLE_REQUEST.
    data(method) = request->get_method( ).
    if method = 'GET'.
      response->set_text('Hello!').
    elseif method = 'POST'.
      delete_stock( ).
      response->set_status('204').
    endif.


  endmethod.

  METHOD delete_stock.
    delete from zstock.
  ENDMETHOD.
ENDCLASS.
