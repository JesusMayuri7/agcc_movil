unit UDataMovil;

interface

uses
  System.SysUtils, System.Classes, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, REST.Response.Adapter, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, System.ImageList, FMX.ImgList;

type
  TdmDataMovil = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    dsLineaCredito: TDataSource;
    dsAhorro: TDataSource;
    fdAhorro: TFDMemTable;
    IntegerField2: TIntegerField;
    fdAhorrodesc_ahorro: TStringField;
    fdAhorroporcentaje: TFloatField;
    fdLineaCredito: TFDMemTable;
    fdLineaCreditoid: TWideStringField;
    fdLineaCreditodesc_linea_credito: TWideStringField;
    fdLineaCreditotipo_interes: TWideStringField;
    fdLineaCreditomonto_minimo: TWideStringField;
    fdLineaCreditomonto_maximo: TWideStringField;
    fdLineaCreditoperfil_cliente: TMemoField;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    adapAhorro: TRESTResponseDataSetAdapter;
    dsReporteCeop: TDataSource;
    fdReporteCeop: TFDMemTable;
    IntegerField3: TIntegerField;
    fdReporteCeopdesc_reporte_ceop: TStringField;
    adapReporteCeop: TRESTResponseDataSetAdapter;
    dsReporteInfo: TDataSource;
    fdReporteInfo: TFDMemTable;
    IntegerField4: TIntegerField;
    fdReporteInfodesc_historial_crediticio: TStringField;
    adapReporteInfo: TRESTResponseDataSetAdapter;
    dsTipoPrestamo: TDataSource;
    fdTipoPrestamo: TFDMemTable;
    IntegerField5: TIntegerField;
    fdTipoPrestamodesc_tipo_prestamo: TStringField;
    adapTipoPrestamo: TRESTResponseDataSetAdapter;
    dsGarantia: TDataSource;
    fdGarantia: TFDMemTable;
    IntegerField6: TIntegerField;
    fdGarantiadesc_garantia: TStringField;
    adapGarantia: TRESTResponseDataSetAdapter;
    dsPerfilCliente: TDataSource;
    dsTipoProducto: TDataSource;
    fdTipoProducto: TFDMemTable;
    fdTipoProductoperfil_cliente_tipo_producto_id: TIntegerField;
    IntegerField1: TIntegerField;
    fdTipoProductodesc_tipo_producto: TStringField;
    fdTipoProductointeres: TFloatField;
    fdTipoProductomora: TFloatField;
    fdTipoProductoplazo_minimo: TIntegerField;
    fdTipoProductoplazo_maximo: TIntegerField;
    fdPerfilCliente: TFDMemTable;
    fdPerfilClienteid: TIntegerField;
    fdPerfilClientedesc_perfil_cliente: TStringField;
    fdPerfilClientetipo_producto: TMemoField;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter;
    dsGiroNegocio: TDataSource;
    fdGiroNegocio: TFDMemTable;
    IntegerField7: TIntegerField;
    fdGiroNegociodesc_giro_negocio: TStringField;
    RESTResponseDataSetAdapter4: TRESTResponseDataSetAdapter;
    fdTipoInfo: TFDMemTable;
    fdTipoInfoid: TIntegerField;
    fdTipoInfodesc_tipo_info_detalle: TStringField;
    fdTipoInfotipo_info_id: TIntegerField;
    fdTipoInfotipo: TStringField;
    fdTipoInfotipo_info: TStringField;
    fdTipoInfoinformacion: TStringField;
    fdTipoInfomonto: TFloatField;
    fdTipoInfosolicitud_id: TIntegerField;
    fdTipoInfotipo_info_detalle_id: TIntegerField;
    dsTipoInfo: TDataSource;
    adapTipoInfo: TRESTResponseDataSetAdapter;
    RestMenu: TRESTRequest;
    RespMenu: TRESTResponse;
    RESTClient2: TRESTClient;
    ImageList1: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDataMovil: TdmDataMovil;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
