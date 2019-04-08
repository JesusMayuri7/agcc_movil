program TabbedWithNavigation;

uses
  System.StartUpCopy,
  FMX.Forms,
  TabbedFormwithNavigation in 'TabbedFormwithNavigation.pas' {TabbedwithNavigationForm},
  UGraph in 'UGraph.pas',
  uHelpers in 'uHelpers.pas',
  uAdapterJson in 'uAdapterJson.pas',
  UDataMovil in 'UDataMovil.pas' {dmDataMovil: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.CreateForm(TdmDataMovil, dmDataMovil);
  Application.Run;
end.
