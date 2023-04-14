#include <MsgBoxConstants.au3>
#include <WinAPIReg.au3>

; Define the new date format
Local $sNewShortDateFormat = "yyyy/MM/dd"
Local $sNewLongDateFormat = "yyyy'年'MM'月'dd'日'"

; Write the new date format to the "sShortDate" value in the registry
RegWrite("HKEY_CURRENT_USER\Control Panel\International", "sShortDate", "REG_SZ", $sNewShortDateFormat)
MsgBox($MB_OK, "Success", "已更新簡短日期格式：" & $sNewShortDateFormat)

; Write the new date format to the "sLongDate" value in the registry
RegWrite("HKEY_CURRENT_USER\Control Panel\International", "sLongDate", "REG_SZ", $sNewLongDateFormat)
MsgBox($MB_OK, "Success", "已更新完整日期格式：" & $sNewLongDateFormat)
