unit TabbedFormwithNavigation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.ListBox, FMX.Layouts, FMX.Edit,
  REST.Types,System.IniFiles,System.IOUtils, REST.Client, Data.Bind.Components,JSON, Data.Bind.ObjectScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.DBScope, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.ScrollBox, FMX.Memo,
  MultiDetailAppearanceU, FMX.DateTimeCtrls;

type
  TTabbedwithNavigationForm = class(TForm)
    TabControl1: TTabControl;
    TabCalcular: TTabItem;
    TabControl2: TTabControl;
    TabItem5: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    btnNext: TSpeedButton;
    TabItem6: TTabItem;
    ToolBar2: TToolBar;
    lblTitle2: TLabel;
    btnBack: TSpeedButton;
    TabLogin: TTabItem;
    ToolBar3: TToolBar;
    lblTitle3: TLabel;
    TabSolicitud: TTabItem;
    ToolBar4: TToolBar;
    lblTitle4: TLabel;
    TabResolucion: TTabItem;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    lst1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    btn1: TButton;
    txtemail: TEdit;
    txtpassword: TEdit;
    RESTClient1: TRESTClient;
    RestSolicitud: TRESTRequest;
    RestRespuesta: TRESTResponse;
    lst2: TListBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    cbbLineaCredito: TComboBox;
    cbbPerfilCliente: TComboBox;
    ListBoxItem6: TListBoxItem;
    cbbTipoProducto: TComboBox;
    fdSolicitud: TFDMemTable;
    fdSolicitudid: TIntegerField;
    fdSolicitudplazo: TIntegerField;
    fdSolicitudcuota: TFloatField;
    fdSolicitudinteres: TFloatField;
    fdSolicitudestado: TStringField;
    fdSolicitudavales: TMemoField;
    fdSolicitudgarantia: TStringField;
    fdSolicitudtipo_prestamo: TStringField;
    fdSolicitudempleado: TStringField;
    fdSolicitudtipo_producto: TStringField;
    fdSolicitudcomentario: TStringField;
    fdSolicitudperfil_cliente: TStringField;
    fdSolicitudperfil_cliente_id: TIntegerField;
    fdSolicitudlinea_credito: TStringField;
    fdSolicitudlinea_credito_id: TIntegerField;
    fdSolicitudcliente_dni: TStringField;
    fdSolicitudtipo_prestamo_id: TIntegerField;
    fdSolicitudtipo_producto_id: TIntegerField;
    fdSolicitudgiro_negocio: TStringField;
    fdSolicitudgiro_negocio_id: TIntegerField;
    fdSolicitudgarantia_id: TIntegerField;
    fdSolicitudreporte_ceop: TStringField;
    fdSolicitudreporte_ceop_id: TIntegerField;
    fdSolicitudreporte_info: TStringField;
    fdSolicitudreporte_info_id: TIntegerField;
    fdSolicitudmonto: TFloatField;
    fdSolicitudtipo_info_detalle: TMemoField;
    fdSolicitudcreated_at: TDateField;
    fdSolicitudperfil_cliente_tipo_producto_id: TIntegerField;
    fdSolicitudahorro_inicial: TFloatField;
    fdSolicitudahorro_programado: TFloatField;
    fdSolicitudtipo_interes: TStringField;
    fdSolicitudresolucion_id: TIntegerField;
    fdSolicitudnro_solicitud: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    linkPerfilCliente: TLinkListControlToField;
    linkLineaCredito: TLinkListControlToField;
    lst3: TListBox;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    txtMonto: TEdit;
    txtPlazo: TEdit;
    ListBoxItem10: TListBoxItem;
    ListBoxItem11: TListBoxItem;
    ListBoxItem12: TListBoxItem;
    ListBoxItem13: TListBoxItem;
    ListBoxItem14: TListBoxItem;
    btn2: TButton;
    txtCuota: TEdit;
    lst4: TListBox;
    ListBoxItem15: TListBoxItem;
    ListBoxItem16: TListBoxItem;
    ListBoxItem17: TListBoxItem;
    lblInteres: TLabel;
    lblMinimo: TLabel;
    lblMaximo: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    lst5: TListBox;
    ListBoxItem21: TListBoxItem;
    ListBoxItem18: TListBoxItem;
    ListBoxItem19: TListBoxItem;
    ListBoxItem20: TListBoxItem;
    ListBoxItem22: TListBoxItem;
    txtDniCliente: TEdit;
    txtNombresCliente: TEdit;
    btn3: TButton;
    txtPaterno: TEdit;
    txtMaterno: TEdit;
    btnNuevoCliente: TButton;
    lst6: TListBox;
    ListBoxItem23: TListBoxItem;
    ListBoxItem24: TListBoxItem;
    txtDniAval: TEdit;
    btn4: TButton;
    txtNombreAval: TEdit;
    cbbTipo: TComboBox;
    btn5: TButton;
    lvAval: TListView;
    lstData: TListBox;
    StyleBook1: TStyleBook;
    btn6: TSpeedButton;
    lst7: TListBox;
    ListBoxItem25: TListBoxItem;
    ListBoxItem26: TListBoxItem;
    ListBoxItem27: TListBoxItem;
    ListBoxItem28: TListBoxItem;
    cbbReporteCeop: TComboBox;
    BindSourceDB5: TBindSourceDB;
    linkReporteCeop: TLinkFillControlToField;
    cbReporteInfoCorp: TComboBox;
    cbbGiroNegocio: TComboBox;
    cbbTipoPrestamo: TComboBox;
    BindSourceDB6: TBindSourceDB;
    LinkReporteInforCorp: TLinkFillControlToField;
    BindSourceDB7: TBindSourceDB;
    LinkGiroNegocio: TLinkFillControlToField;
    BindSourceDB8: TBindSourceDB;
    LinkTipoPrestamo: TLinkFillControlToField;
    ListBoxItem29: TListBoxItem;
    cbbGarantia: TComboBox;
    BindSourceDB9: TBindSourceDB;
    LinkGarantia: TLinkFillControlToField;
    edComentario: TMemo;
    lst8: TListBox;
    ListBoxItem30: TListBoxItem;
    btn7: TSpeedButton;
    lvSolicitudes: TListView;
    LinkListControlToField1: TLinkListControlToField;
    fdSolicitudcliente_full_name: TStringField;
    cbFecha: TDateEdit;
    cbbCriterio: TComboBox;
    lst9: TListBox;
    ListBoxItem31: TListBoxItem;
    DateEdit1: TDateEdit;
    cb1: TComboBox;
    tlb1: TToolBar;
    Label1: TLabel;
    btn10: TSpeedButton;
    btn11: TButton;
    btn8: TButton;
    fdResolucion: TFDMemTable;
    fdResolucionid: TIntegerField;
    fdResolucionsolicitud_id: TIntegerField;
    fdResolucionnro_resolucion: TIntegerField;
    fdResolucionestado: TStringField;
    fdResolucioncliente_full_name: TStringField;
    fdResolucionempleado_full_name: TStringField;
    fdResolucionmonto: TFloatField;
    fdResolucioncuota: TFloatField;
    fdResolucionplazo: TIntegerField;
    fdResolucioncomentario: TStringField;
    fdResoluciontipo_interes: TStringField;
    fdResolucioninteres: TFloatField;
    fdResolucionahorro_inicial: TFloatField;
    fdResolucionahorro_programado: TFloatField;
    fdResolucionplazo_maximo: TIntegerField;
    lvResoluciones: TListView;
    BindSourceDB10: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    fdResolucioncreated_at: TDateField;
    TabItem3: TTabItem;
    tlb2: TToolBar;
    Label2: TLabel;
    btn9: TSpeedButton;
    btn12: TSpeedButton;
    lstResumen: TListBox;
    lstAdicional: TListBox;
    LinkPropertyToFieldTag: TLinkPropertyToField;
    LinkListControlToField2: TLinkListControlToField;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure cbbPerfilClienteChange(Sender: TObject);
    procedure cbbLineaCreditoClosePopup(Sender: TObject);
    procedure cbbPerfilClienteClosePopup(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnNuevoClienteClick(Sender: TObject);
    procedure lvAvalButtonClick(const Sender: TObject; const AItem: TListItem;
      const AObject: TListItemSimpleControl);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure lstDataItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure LinkPropertyToFieldText2AssignedValue(Sender: TObject;
      AssignValueRec: TBindingAssignValueRec; const Value: TValue);
    procedure fdSolicitudcliente_full_nameGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure fdSolicitudnro_solicitudGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btn8Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure fdResolucionnro_resolucionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btn9Click(Sender: TObject);
  private
    { Private declarations }
    function Login(email,clave:string):Boolean;
    procedure grabarToken(item:TJSONObject);
    function grabarNuevoCliente(dni,nombres,apellido_paterno,apellido_materno:string):TJSONObject;
    procedure eliminarAval();
    procedure AgregarAval(tipo,nombres:string;id:Integer);
    procedure llenarData();
    function TipoInfoToArray(lista:TListBox):TJsonArray;
    function NuevaSolicitud(empleado_id,cliente_id:integer;interes,monto,plazo,cuota:real;
    reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
    perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;
    activo:boolean;avales:TJsonArray;tipoInfo:TJSONArray;aIncial,aProgramado:Real;tipo_interes:string):TJSONObject;
    function GridToJsonArray(lista: TListview): TJsonArray;
    procedure listarSolicitud();
    var paginaActual:integer;
    procedure listarResolucion();
    procedure CrearSolicitud();
  public
    { Public declarations }
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

uses
  UGraph, uHelpers, UDataMovil;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TTabbedwithNavigationForm.listarResolucion();
var graph:Tgraph;
var variables:TJSONObject;
var data,dataVar,query:TJSONObject;
var orden,page:Integer;
var tipo_bien:string;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmDataMovil.RESTClient1,fdResolucion);
    try
    graph.query:='query verResolucion($nro_resolucion:String,$created_at:String) { resolucionQuery'+
    '(nro_resolucion:$nro_resolucion,created_at:$created_at) { data '+
    '{ id,solicitud_id,nro_resolucion,estado,cliente_full_name,empleado_full_name,monto,'+
    'cuota,plazo,comentario,tipo_interes,interes,ahorro_inicial,ahorro_programado,plazo_maximo,created_at } }}';

    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
//    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
     if cb1.ItemIndex>0 then
     begin
       case cb1.ItemIndex of
        1:dataVar.AddPair('created_at',TJSONString.Create(DateToStr(cbFecha.Date)));
       end;
     end;
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.variables:=variables;

    graph.rootElement:='data.resolucionQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('resolucionQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
//    lblPaginaActual.Caption:=paginaActual.ToString;
//    lblTotalPagina.Caption:= graph.totalPag.ToString;
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

function TTabbedwithNavigationForm.GridToJsonArray(lista: TListview): TJsonArray;
var
  I: Integer;
  item:TJsonObject;
  AItem:TListItemText ;
begin
   //showmessage(tag.ToString);
   result:=TJsonArray.Create();
   for I := 0 to Lista.items.count-1 do
   begin
      AItem:=lista.Items[I].Objects.FindObjectT<TListItemText>('aval');
      item:=TJsonObject.Create;
      item.AddPair('solicitud_id',TJsonNumber.Create(Tag));
      item.AddPair('cliente_id',TJsonNumber.create(Lista.items[I].Tag));
      item.AddPair('tipo',TJsonString.create(AItem.Text));
      result.AddElement(item);
   end;
   ShowMessage(result.ToString);
end;

procedure TTabbedwithNavigationForm.LinkPropertyToFieldText2AssignedValue(
  Sender: TObject; AssignValueRec: TBindingAssignValueRec; const Value: TValue);
begin
    //Value.AsString:='hola '+value;
end;

function TTabbedwithNavigationForm.NuevaSolicitud(empleado_id,cliente_id:integer;interes,monto,plazo,cuota:real;
    reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
    perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;activo:boolean;avales:TJsonArray;tipoInfo:TJsonArray;aIncial,aProgramado:Real;tipo_interes:string):TJSONObject;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
//var resultado:TJsonObject;
var I:byte;
begin
    result:=TJSONObject.Create;
    uHelpers.aInicial:=0;
    uHelpers.aProgramado:=0;
    interes:=dmDataMovil.fdTipoProducto.FieldValues['interes'];
      if dmDataMovil.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
             uHelpers.datosAhorro(dmDataMovil.fdAhorro);
    graph:=TGraph.Create(dmDataMovil.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postSolicitud($empleado_id:Int,$cliente_id:Int,$id:Int,$interes:Float,$monto:Float,$plazo:Int,'+
    '$cuota:Float,$comentario:String,$reporte_ceop_id:Int,$reporte_info_id:Int,$giro_negocio_id:Int,$tipo_prestamo_id:Int,'+
    '$perfil_cliente_tipo_producto_id:Int,$garantia_id:Int,$activo:Int,$ahorro_inicial:Float,$ahorro_programado:Float,'+
    '$tipo_info_detalle:[tipoInfoDetalleInputObjectType],$tipo_interes:String,$avales:[avalInputObjectType])'+
    ' { solicitudMutation(empleado_id:$empleado_id,cliente_id:$cliente_id,id:$id,interes:$interes,monto:$monto,plazo:$plazo,cuota:$cuota,'+
    'comentario:$comentario,reporte_ceop_id:$reporte_ceop_id,historial_crediticio_id:$reporte_info_id,'+
    'giro_negocio_id:$giro_negocio_id,tipo_prestamo_id:$tipo_prestamo_id,'+
    'perfil_cliente_tipo_producto_id:$perfil_cliente_tipo_producto_id,garantia_id:$garantia_id,activo:$activo,'+
    'ahorro_inicial:$ahorro_inicial,ahorro_programado:$ahorro_programado,tipo_info_detalle:$tipo_info_detalle,tipo_interes:$tipo_interes,avales:$avales)'+
    ' {id,activo,monto,plazo,cuota,interes,comentario,reporte_ceop,reporte_ceop_id,reporte_info,'+
    'reporte_info_id,cliente_full_name,garantia,garantia_id,empleado,tipo_producto,tipo_producto_id,'+
    'tipo_prestamo,tipo_prestamo_id,nro_solicitud,estado,perfil_cliente,perfil_cliente_id,'+
    'linea_credito,linea_credito_id,cliente_dni,giro_negocio,giro_negocio_id,avales '+
    '{id,dni,full_name,tipo }}}';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('cliente_id',TJSONNumber.Create(cliente_id));
    dataVar.AddPair('empleado_id',TJSONNumber.Create(empleado_id));
    dataVar.AddPair('interes',TJSONNumber.Create(interes));
    dataVar.AddPair('monto',TJSONNumber.Create(monto));
    dataVar.AddPair('plazo',TJSONNumber.Create(plazo));
    dataVar.AddPair('cuota',TJSONNumber.Create(cuota));
    dataVar.AddPair('ahorro_inicial',TJSONNumber.Create(uHelpers.aInicial));
    dataVar.AddPair('ahorro_programado',TJSONNumber.Create(uHelpers.aProgramado));
    dataVar.AddPair('comentario',TJSONString.Create(comentario));
    dataVar.AddPair('tipo_interes',TJSONString.Create(tipo_interes));
   // ShowMessage(VarToStr(reporte_ceop_id));
    if VarIsnull(reporte_ceop_id) then
       dataVar.AddPair('reporte_ceop_id',TJsonNUll.Create)
    else
       dataVar.AddPair('reporte_ceop_id',TJSONNumber.Create(reporte_ceop_id));
    if VarIsnull(reporte_info_id) then
       dataVar.AddPair('reporte_info_id',TJsonNUll.Create)
    else
       dataVar.AddPair('reporte_info_id',TJSONNumber.Create(reporte_info_id));
    if VarIsnull(giro_negocio_id) then
       dataVar.AddPair('giro_negocio_id',TJsonNUll.Create)
    else
       dataVar.AddPair('giro_negocio_id',TJSONNumber.Create(giro_negocio_id));
    if VarIsnull(tipo_prestamo_id) then
       dataVar.AddPair('tipo_prestamo_id',TJsonNUll.Create)
    else
       dataVar.AddPair('tipo_prestamo_id',TJSONNumber.Create(tipo_prestamo_id));
    if VarIsnull(perfil_cliente_tipo_producto_id) then
       dataVar.AddPair('perfil_cliente_tipo_producto_id',TJsonNUll.Create)
    else
       dataVar.AddPair('perfil_cliente_tipo_producto_id',TJSONNumber.Create(perfil_cliente_tipo_producto_id));
    if VarIsnull(garantia_id) then
       dataVar.AddPair('garantia_id',TJsonNUll.Create)
    else
       dataVar.AddPair('garantia_id',TJSONNumber.Create(garantia_id));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    dataVar.AddPair('avales',avales);
    dataVar.AddPair('tipo_info_detalle',tipoInfo);
    variables.AddPair('variables',dataVar);

    graph.variables:=variables;

    result:=graph.ejecutar('solicitudMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
 //   uHelpers.InsertarRegistroDataset(resultado,fdSolicitud);
    // Listar();
    finally
//       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

function TTabbedwithNavigationForm.TipoInfoToArray(lista: TListBox): TJsonArray;
var
  I: Integer;
  data:TJSONArray;
  item:TJSONObject;
begin
  result:=TJSONArray.Create;
  for I := 0 to lista.Items.Count-1 do
  begin
    if lista.ListItems[I].Tag>0 then
    begin
    item:=TJSONObject.Create;
    item.AddPair('solicitud_id',TJSONNumber.Create(0));
    item.AddPair('tipo_info_detalle_id',TJSONNumber.Create(lista.ListItems[I].Tag));
    item.AddPair('monto',TJSONNumber.Create(lista.ListItems[I].ItemData.Detail));
    result.AddElement(item);
    end;
  end;
end;

function TTabbedwithNavigationForm.grabarNuevoCliente(dni,nombres,apellido_paterno,apellido_materno:string):TJSONObject;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    result:=TJSONObject.Create;
    graph:=TGraph.Create(dmDataMovil.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postCliente($dni:String!,$nombres:String!,$apellido_paterno:String!'+
    ',$apellido_materno:String!)'+
    ' { clienteMutation(dni:$dni,nombres:$nombres,apellido_paterno:$apellido_paterno,'+
    'apellido_materno:$apellido_materno)'+
    ' {id,dni,nombres,apellido_paterno,apellido_materno}  } ';
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('dni',TJSONString.Create(dni));
    dataVar.AddPair('nombres',TJSONString.Create(nombres));
    dataVar.AddPair('apellido_paterno',TJSONString.Create(apellido_paterno));
    dataVar.AddPair('apellido_materno',TJSONString.Create(apellido_materno));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;
    result:=graph.ejecutar('clienteMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
//    uHelpers.InsertarRegistroDataset(resultado,fdCliente);
   // showmessage(resultado.ToString);
    finally
       //FreeAndNil(result);
       FreeAndNil(graph);
    end;
end;

procedure TTabbedwithNavigationForm.grabarToken(item:TJSONObject);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(TPath.Combine(TPath.GetHomePath, 'ceop.ini'));  { Interno }
  try
    ini.WriteString('LOGIN','TOKEN', item.Get('token').JSONValue.value);
  finally
    ini.Free;
  end;
end;

procedure TTabbedwithNavigationForm.listarSolicitud;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdataMOvil.RESTClient1,fdSolicitud);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query solicitud($created_at:String) { solicitudQuery(created_at:$created_at) { data {id,activo,monto,plazo,cuota,interes,'+
    'comentario,reporte_ceop,reporte_ceop_id,reporte_info,reporte_info_id,cliente_full_name,garantia,garantia_id,empleado,'+
    'tipo_producto,tipo_producto_id,tipo_prestamo,tipo_prestamo_id,nro_solicitud,estado,'+
    'perfil_cliente,perfil_cliente_id,'+'linea_credito,linea_credito_id,cliente_dni,perfil_cliente_tipo_producto_id,'+
    'giro_negocio,giro_negocio_id,created_at,ahorro_inicial,ahorro_programado,tipo_interes,'+
    'avales {id,dni,full_name,tipo},tipo_info_detalle {tipo_info_detalle_id,solicitud_id,monto},resolucion_id }}}';
    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
//    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
     if cbbCriterio.ItemIndex>0 then
     begin
       case cbbCriterio.ItemIndex of
        1:dataVar.AddPair('created_at',TJSONString.Create(DateToStr(cbFecha.Date)));
       end;
     end;
   //    dataVar.AddPair('desc_linea_credito',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.solicitudQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('solicitudQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // uHelpers.JsonToDataset(fdAvales,VarToStr(fdSolicitud.FieldValues['avales']));

//    uHelpers.JsonToDataset(fdAvales,TJsonArray((TJsonObject(resultado.Get('data').JsonValue.ToJSON).Get(0)).JsonValue.ToJSON));
    // NO variar
//    lblPaginaActual.Caption:=paginaActual.ToString;
//    lblTotalPagina.Caption:= graph.totalPag.ToString;
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TTabbedwithNavigationForm.llenarData;
var
 c: Char;
 i: Integer;
 Buffer,subcabecera,cabecera: String;
 ListBoxItem : TListBoxItem;
 ListBoxGroupHeader : TListBoxGroupHeader;
 SubListBoxGroupHeader : TListBoxGroupHeader;
 ListBoxGroupFooter : TListBoxGroupFooter;
begin
   lstData.beginUpdate;
   dmDataMovil.fdTipoInfo.First;
   cabecera:='';
 while not(dmDataMovil.fdTipoInfo.Eof) do

 begin
//     if dmDataMovil.fdTipoInfo.FieldByName('informacion').AsString then
     if cabecera<>UpperCase(dmDataMovil.fdTipoInfo.FieldByName('informacion').AsString) then
     begin
     ListBoxGroupHeader := TListBoxGroupHeader.Create(lstData);
     ListBoxGroupHeader.Text := UpperCase(dmDataMovil.fdTipoInfo.FieldByName('informacion').AsString);
     lstData.AddObject(ListBoxGroupHeader);
     cabecera:=UpperCase(dmDataMovil.fdTipoInfo.FieldByName('informacion').AsString);
     end;
     {
     ListBoxGroupFooter := TListBoxGroupFooter.Create(lstData);
     ListBoxGroupFooter.Text := UpperCase(dmDataMovil.fdTipoInfo.FieldByName('tipo_info').AsString);
     lstData.AddObject(ListBoxGroupFooter);}
     if subcabecera<>UpperCase(dmDataMovil.fdTipoInfo.FieldByName('tipo_info').AsString) then
     begin
     SubListBoxGroupHeader := TListBoxGroupHeader.Create(ListBoxGroupHeader);
     SubListBoxGroupHeader.Text := UpperCase('--> '+dmDataMovil.fdTipoInfo.FieldByName('tipo_info').AsString);
     lstData.AddObject(SubListBoxGroupHeader);
     subcabecera:=UpperCase(dmDataMovil.fdTipoInfo.FieldByName('tipo_info').AsString);
     end;
     ListBoxItem := TListBoxItem.Create(lstData);
     ListBoxItem.Text := '   '+dmDataMovil.fdTipoInfo.FieldByName('desc_tipo_info_detalle').AsString;
     ListBoxItem.TextSettings.Font.Size:=9;
     ListBoxItem.Width:=100;
     ListBoxItem.Tag:=dmDataMovil.fdTipoInfo.FieldByName('id').AsInteger;
     ListBoxItem.ItemData.Detail:='0.00';
     ListBoxItem.StyledSettings:=[TStyledSetting.Family,TStyledSetting.Style,TStyledSetting.FontColor,TStyledSetting.Other];
     lstData.AddObject(ListBoxItem);
     dmDataMovil.fdTipoInfo.Next;
 end;
 lstData.EndUpdate;
end;


function TTabbedwithNavigationForm.Login(email,clave:string):Boolean;
var error,exito,param,resultado:TJSONObject;
var mensaje:string;
begin
   Result:=False;
   param:=TJSONObject.Create;
   param.AddPair('email',TJSONString.Create(email));
   param.AddPair('password',TJSONString.Create(clave));

   RestSolicitud.AddParameter('body',param.ToString,TRESTRequestParameterKind.pkREQUESTBODY);
   RestSolicitud.Params.ParameterByName('body').ContentType:=TRESTContentType.ctAPPLICATION_JSON;

   RestSolicitud.Execute;
   resultado:=TJSONObject.Create;
   resultado:=TJSONObject(RestRespuesta.JSONValue);
      if resultado.TryGetValue('message',mensaje) then
      begin
         if resultado.Get('message').JsonValue.Value='exito' then
         begin
            grabarToken(TJSONObject(resultado.Get('data').JsonValue));

            Result:=True
         end;
      end
      else
         ShowMessage('Credenciales invalidas o verique su conexion');
end;

procedure TTabbedwithNavigationForm.lstDataItemClick(
  const Sender: TCustomListBox; const Item: TListBoxItem);
  var monto:Extended;
begin
InputBox('Ingrese monto?','','0.00',
        procedure(const AResult: TModalResult; const AValue: string)
        begin
            case AResult of
              { Detect which button was pushed and show a different message }
              mrOk:
                begin
                  if TryStrToFloat(avalue,monto) then
                    Item.ItemData.Detail:= FormatFloat('#,##0.00',monto)
                  else
                    showmessage('solo numeros');
                end;
                mrCancel:
                begin
                end;
           end;
        end
        );
end;

procedure TTabbedwithNavigationForm.lvAvalButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
   AItem.Destroy;
end;

procedure TTabbedwithNavigationForm.AgregarAval(tipo, nombres: string;
  id: Integer);
   var itemList:TListViewItem;
ldes, lOrder, lLegal : TListItemText;
boton: TlistItemTextButton;
begin
                     itemList := lvAval.Items.Add;
                     itemList.Height:=30;
                     itemList.Tag:=id;
                     ldes := itemList.Objects.FindObjectT<TListItemText>('descripcion');
                      lOrder := itemList.Objects.FindObjectT<TListItemText>('aval');
                     // boton := itemList.Objects.FindObjectT<TlistItemTextButton>('boton');
                      ldes.Text := nombres;
                      lOrder.Text := tipo;
end;

procedure TTabbedwithNavigationForm.btn10Click(Sender: TObject);
begin
listarResolucion();
end;

procedure TTabbedwithNavigationForm.btn11Click(Sender: TObject);
begin
listarResolucion();
end;

procedure TTabbedwithNavigationForm.btn1Click(Sender: TObject);
begin
 if Login(txtEmail.Text,txtpassword.Text) then
    begin
    TabLogin.Visible:=false;
    TabCalcular.Visible:=True;
    TabControl1.ActiveTab:=TabCalcular;
    TabResolucion.Visible:=True;
    TabSolicitud.Visible:=True;
     dmDataMovil.RESTRequest1.Execute;
    // uHelpers.PrimerElementoCombo(cbbLineaCredito);
     dmDataMovil.adapAhorro.Active;
     uHelpers.JsonToDataset(dmDataMovil.fdPerfilCliente,VarToStr(dmDataMovil.fdLineaCredito.FieldValues['perfil_cliente']));

    llenarData();
    end
 else
   ShowMessage('error');
end;

procedure TTabbedwithNavigationForm.btn2Click(Sender: TObject);
var calculos:TJsonArray;
var cuota,interes:real;
var plazo_maximo:Integer;
    SelectedValue: Integer;
begin
 txtCuota.Text:='0';
 cuota:=0;
 interes:=0;
 plazo_maximo:=0;
  SelectedValue:=0;
 if TryStrToInt(dmDataMovil.fdTipoProducto.FieldValues['perfil_cliente_tipo_producto_id'], SelectedValue) then
 begin
   if (txtMonto.Text.ToDouble>0) and (txtPlazo.Text.ToInteger>0) and (SelectedValue>0) then
   begin
      interes:=dmDataMovil.fdTipoProducto.FieldValues['interes'];
      plazo_maximo:=dmDataMovil.fdTipoProducto.FieldValues['plazo_maximo'];
     if dmDataMovil.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
         begin
        // pgcRebatir.TabVisible:=false;
        // pgcSimple.TabVisible:=true;
         calculos:=uHelpers.calcularTotales(interes,txtMonto.Text.ToDouble,txtPlazo.Text.ToDouble());
         uHelpers.llenarGridResumen(calculos,lstResumen);
         cuota:=uHelpers.calcularAhorro(txtMonto.Text.ToDouble,txtPlazo.Text.ToInteger,interes,dmDataMovil.fdAhorro,plazo_maximo);
         lstAdicional.Items.Clear;
//         uHelpers.calcularCuota(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro,gridCuota);
//         uHelpers.calcularRendicion(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro,gridRendicion);
          end;
     if dmDataMovil.fdLineaCredito.FieldValues['tipo_interes']='PARALELO' then
         begin
         calculos:=uHelpers.calcularTotales(interes,txtMonto.Text.ToDouble,txtPlazo.Text.ToInteger());
         uHelpers.llenarGridResumen(calculos,lstResumen);
         cuota:=uHelpers.calcularAhorro(txtMonto.Text.ToDouble,txtPlazo.Text.ToInteger,interes,dmDataMovil.fdAhorro,plazo_maximo);
//         uHelpers.calcularCuota(spnMonto.value,spnPlazo.Value,interes,nil,gridCuota);
//         uHelpers.calcularRendicion(spnMonto.value,spnPlazo.Value,interes,nil,gridRendicion);
         lstAdicional.Items.Clear;
          end;
      if dmDataMovil.fdLineaCredito.FieldValues['tipo_interes']='REBATIR' then
         begin
         cuota:=uHelpers.calcularParametrosRebatir(lstResumen,txtMonto.Text.ToDouble,txtPlazo.Text.ToInteger,interes);
         //
         uHelpers.llenarGridRebatir(lstAdicional,cuota,txtMonto.Text.ToDouble,interes,txtPlazo.Text.ToInteger());
         end;
     txtCuota.Text:=FloatTostr(cuota);
   end;
 end;

end;

procedure TTabbedwithNavigationForm.btn3Click(Sender: TObject);
   var respuesta,item:TJSONObject;
   var id1:string;
   var id2:Integer;
   data:TJSONArray;
begin
        respuesta:=TJSONObject.Create();
        respuesta:=uHelpers.existeCliente(txtDniCliente.Text);
        if respuesta.TryGetValue('data',data)  and (TJSONArray(data).Count>0) then
           begin
             //  ShowMessage(data.ToString);
             item:=data.Get(0) as TJSONObject;
             if item.TryGetValue('id',id1) then
                if TryStrToInt(id1,id2) then
                begin
                     txtNombresCliente.Text:= item.Get('full_name').JsonValue.Value;
                     txtDniCliente.Tag:= item.Get('id').JsonValue.Value.ToInteger;
                end;
           end
        else
        begin
          btnNuevoCliente.EnableD:=True;
        end;
end;

procedure TTabbedwithNavigationForm.btn4Click(Sender: TObject);
    var respuesta,item:TJSONObject;
   var id1:string;
   var id2:Integer;
   data:TJSONArray;
begin
        respuesta:=TJSONObject.Create();
        respuesta:=uHelpers.existeCliente(txtDniAval.Text);
        if respuesta.TryGetValue('data',data)  and (TJSONArray(data).Count>0) then
           begin
             //  ShowMessage(data.ToString);
             item:=data.Get(0) as TJSONObject;
             if item.TryGetValue('id',id1) then
                if TryStrToInt(id1,id2) then
                begin
                    txtNombreAval.Text:=item.Get('full_name').JsonValue.Value;
                    txtNombreAval.Tag:=id2;
                end;
           end
        else
        begin
          btnNuevoCliente.EnableD:=True;
        end;

end;

procedure TTabbedwithNavigationForm.btn5Click(Sender: TObject);
begin
AgregarAval(cbbTipo.Items[cbbTipo.ItemIndex],txtNombreAval.Text,txtNombreAval.Tag);
end;

procedure TTabbedwithNavigationForm.btn6Click(Sender: TObject);
var
    IdReporteCeop,IdReporteInforCorp,IdTipoPrestamo,IdGiroNegocio,IdGarantia: Variant;
    aInicial,aProgramado:real;
    interes:Extended;

begin
  //btnGuardar.Enabled:=false;
  IdReporteCeop:=null;
  IdReporteInforCorp:=null;
  IdGiroNegocio:=null;
  IdTipoPrestamo:=null;
  IdGarantia:=null;
 if TryStrToFloat(lblInteres.Text,interes) then
    begin
        if (Length(linkReporteCeop.BindList.GetSelectedValue.ToString)>0) AND (linkReporteCeop.BindList.GetSelectedValue.ToString<>'(empty)') then
           IdReporteCeop:=linkReporteCeop.BindList.GetSelectedValue.ToString.ToInteger;
        if (Length(LinkReporteInforCorp.BindList.GetSelectedValue.AsString)>0) AND (LinkReporteInforCorp.BindList.GetSelectedValue.ToString<>'(empty)') then
           idReporteInforCorp:=LinkReporteInforCorp.BindList.GetSelectedValue.AsString.ToInteger;
        if (Length(LinkGiroNegocio.BindList.GetSelectedValue.AsString)>0) AND (LinkGiroNegocio.BindList.GetSelectedValuE.ToString<>'(empty)') then
           IdGiroNegocio:=LinkGiroNegocio.BindList.GetSelectedValue.AsString.ToInteger;
        if (Length(LinkTipoPrestamo.BindList.GetSelectedValue.AsString)>0) and (LinkTipoPrestamo.BindList.GetSelectedValue.ToString<>'(empty)') then
           IdTipoPrestamo:=LinkTipoPrestamo.BindList.GetSelectedValue.AsString.ToInteger;
        if (Length(LinkGarantia.BindList.GetSelectedValue.AsString)>0) and (LinkGarantia.BindList.GetSelectedValue.ToString<>'(empty)') then
           IdGarantia:=LinkGarantia.BindList.GetSelectedValue.AsString.ToInteger;
        aInicial:=0;
        aProgramado:=0;
        interes:=lblInteres.Text.ToDouble;
        if dmdataMovil.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
            begin
                uHelpers.datosAhorro(dmdataMovil.fdAhorro);
                aInicial:=uHelpers.aInicial;
                aProgramado:=uHelpers.aProgramado;
            end;
        if Tag>0 then
          begin

        //  EditarSolicitud(tag,interes,spnMonto.Value,spnPlazo.Value,spnCuota.Value,cbbReporteCeop.EditValue,cbbReporteInfo.EditValue,
        //  cbbGiroNegocio.EditValue,cbbTipoPrestamo.EditValue,cbbTipoProducto.EditValue,cbbGarantia.EditValue,txtcomentario.Lines.Text,true,
        //  gridToJsonArray(gridAvales),datasetToJsonArray2(dmdata.fdTipoInfo),aInicial,aProgramado,dmdata.fdLineaCredito.FieldValues['tipo_interes']);
          end
        else
        begin
//          procedure NuevaSolicitud(empleado_id,cliente_id:integer;interes,monto,plazo,cuota:real;
//          reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
//           perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;activo:boolean;avales:TJsonArray;
//           aIncial,aProgramado:Real;tipo_interes:string);
            NuevaSolicitud(1,txtDniCliente.Tag,interes,txtMonto.Text.ToDouble,txtPlazo.Text.ToInteger,txtCuota.Text.ToDouble,
            IdReporteCeop,IdReporteInforCorp,
            idGiroNegocio,IdTipoPrestamo,lblInteres.TagString.ToInteger,IdGarantia,
            edComentario.Lines.Text,true,gridToJsonArray(lvAval),TipoInfoToArray(lstData),aInicial,aProgramado,dmdataMovil.fdLineaCredito.FieldValues['tipo_interes']);
        end;
    end;

end;

procedure TTabbedwithNavigationForm.btn7Click(Sender: TObject);
begin
listarSolicitud();
end;

procedure TTabbedwithNavigationForm.btn8Click(Sender: TObject);
begin
   listarSolicitud();
end;

procedure TTabbedwithNavigationForm.btn9Click(Sender: TObject);
var cuota:Extended;
begin
if TryStrToFloat(txtcuota.Text,cuota) then
   CrearSolicitud()
else
   ShowMessage('Define cuota');
end;

procedure TTabbedwithNavigationForm.btnNuevoClienteClick(Sender: TObject);
var cliente:TJSONObject;
id:string;
begin
  if Length(txtDniCliente.Text)=8 then
  begin
     try
     cliente:=TJSONObject.Create;
     cliente:=grabarNuevoCliente(txtDniCliente.Text,txtNombresCliente.Text,txtPaterno.Text,txtMaterno.Text);
     //ShowMessage(cliente.ToString);
     if cliente.TryGetValue('id',id) then
       begin
           ShowMessage('Cliente creado exitosamente');
           btnNuevoCliente.Enabled:=False;
       end;
     finally
       FreeAndNil(cliente);
     end;
  end;
end;

procedure TTabbedwithNavigationForm.cbbLineaCreditoClosePopup(Sender: TObject);
begin
//ShowMessage(dmDataMovil.fdLineaCredito.FieldValues['perfil_cliente']);
uHelpers.JsonToDataset(dmDataMovil.fdPerfilCliente,VarToStr(dmDataMovil.fdLineaCredito.FieldValues['perfil_cliente']));
//uHelpers.PrimerElementoCombo(cbbTipoProducto);
//uHelpers.JsonToDataset(dmDataMovil.fdTipoProducto,VarToStr(dmDataMovil.fdPerfilCliente.FieldValues['tipo_producto']));
end;

procedure TTabbedwithNavigationForm.cbbPerfilClienteChange(Sender: TObject);
begin

uHelpers.JsonToDataset(dmDataMovil.fdTipoProducto,VarToStr(dmDataMovil.fdPerfilCliente.FieldValues['tipo_producto']));
//uHelpers.PrimerElementoCombo(cbbTipoProducto);
       //spnCuota.Value:=0;
end;

procedure TTabbedwithNavigationForm.cbbPerfilClienteClosePopup(Sender: TObject);
begin
//uHelpers.JsonToDataset(dmDataMovil.fdTipoProducto,VarToStr(dmDataMovil.fdPerfilCliente.FieldValues['tipo_producto']));
end;

procedure TTabbedwithNavigationForm.CrearSolicitud;
var
    IdReporteCeop,IdReporteInforCorp,IdTipoPrestamo,IdGiroNegocio,IdGarantia: Variant;
    aInicial,aProgramado:real;
    interes:Extended;
    respuesta:TJSONObject;
    idCreado:string;
begin
  //btnGuardar.Enabled:=false;
  IdReporteCeop:=null;
  IdReporteInforCorp:=null;
  IdGiroNegocio:=null;
  IdTipoPrestamo:=null;
  IdGarantia:=null;
  respuesta:=TJSONObject.Create;
 if TryStrToFloat(lblInteres.Text,interes) then
    begin
        if (Length(linkReporteCeop.BindList.GetSelectedValue.ToString)>0) AND (linkReporteCeop.BindList.GetSelectedValue.ToString<>'(empty)') then
           IdReporteCeop:=linkReporteCeop.BindList.GetSelectedValue.ToString.ToInteger;
        if (Length(LinkReporteInforCorp.BindList.GetSelectedValue.AsString)>0) AND (LinkReporteInforCorp.BindList.GetSelectedValue.ToString<>'(empty)') then
           idReporteInforCorp:=LinkReporteInforCorp.BindList.GetSelectedValue.AsString.ToInteger;
        if (Length(LinkGiroNegocio.BindList.GetSelectedValue.AsString)>0) AND (LinkGiroNegocio.BindList.GetSelectedValuE.ToString<>'(empty)') then
           IdGiroNegocio:=LinkGiroNegocio.BindList.GetSelectedValue.AsString.ToInteger;
        if (Length(LinkTipoPrestamo.BindList.GetSelectedValue.AsString)>0) and (LinkTipoPrestamo.BindList.GetSelectedValue.ToString<>'(empty)') then
           IdTipoPrestamo:=LinkTipoPrestamo.BindList.GetSelectedValue.AsString.ToInteger;
        if (Length(LinkGarantia.BindList.GetSelectedValue.AsString)>0) and (LinkGarantia.BindList.GetSelectedValue.ToString<>'(empty)') then
           IdGarantia:=LinkGarantia.BindList.GetSelectedValue.AsString.ToInteger;
        aInicial:=0;
        aProgramado:=0;
        interes:=lblInteres.Text.ToDouble;
        if dmdataMovil.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
            begin
                uHelpers.datosAhorro(dmdataMovil.fdAhorro);
                aInicial:=uHelpers.aInicial;
                aProgramado:=uHelpers.aProgramado;
            end;
        if Tag>0 then
          begin

        //  EditarSolicitud(tag,interes,spnMonto.Value,spnPlazo.Value,spnCuota.Value,cbbReporteCeop.EditValue,cbbReporteInfo.EditValue,
        //  cbbGiroNegocio.EditValue,cbbTipoPrestamo.EditValue,cbbTipoProducto.EditValue,cbbGarantia.EditValue,txtcomentario.Lines.Text,true,
        //  gridToJsonArray(gridAvales),datasetToJsonArray2(dmdata.fdTipoInfo),aInicial,aProgramado,dmdata.fdLineaCredito.FieldValues['tipo_interes']);
          end
        else
        begin
//          procedure NuevaSolicitud(empleado_id,cliente_id:integer;interes,monto,plazo,cuota:real;
//          reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
//           perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;activo:boolean;avales:TJsonArray;
//           aIncial,aProgramado:Real;tipo_interes:string);

            respuesta:=NuevaSolicitud(1,txtDniCliente.Tag,interes,txtMonto.Text.ToDouble,txtPlazo.Text.ToInteger,txtCuota.Text.ToDouble,
            IdReporteCeop,IdReporteInforCorp,
            idGiroNegocio,IdTipoPrestamo,lblInteres.TagString.ToInteger,IdGarantia,
            edComentario.Lines.Text,true,gridToJsonArray(lvAval),TipoInfoToArray(lstData),aInicial,aProgramado,dmdataMovil.fdLineaCredito.FieldValues['tipo_interes']);
            if respuesta.TryGetValue('nro_solicitud',idCreado) then
            begin
               ShowMessage('Solicitud creada: #'+idCreado);
               TabControl1.SetActiveTabWithTransition(TabSolicitud,TTabTransition.Slide,TTabTransitionDirection.Normal);
               listarSolicitud();
            end;
        end;
    end;
end;

procedure TTabbedwithNavigationForm.eliminarAval;
begin
//
end;

procedure TTabbedwithNavigationForm.fdResolucionnro_resolucionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text:='N�: '+Sender.AsString+' --> '+VarToStr(fdResolucion.FieldValues['created_at']);
end;

procedure TTabbedwithNavigationForm.fdSolicitudcliente_full_nameGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
//Text:='Cliente: '+ Sender.AsString;
end;

procedure TTabbedwithNavigationForm.fdSolicitudnro_solicitudGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
 Text:='N�: '+Sender.AsString+' --> '+VarToStr(fdSolicitud.FieldValues['created_at']);
end;



procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabCalcular.Visible:=False;
  TabSolicitud.Visible:=False;
  TabResolucion.Visible:=False;
  TabControl1.ActiveTab := TabLogin;
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControl1.ActiveTab = TabCalcular) and (TabControl2.ActiveTab = TabItem6) then
    begin
      TabControl2.Previous;
      Key := 0;
    end;
  end;
end;

procedure TTabbedwithNavigationForm.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount - 1] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

end.

