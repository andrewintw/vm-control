# vm-control.ps1

使用 PowerShell 控制 VirtualBox 虛擬機的工具腳本，支援啟動、關機、強制關機、查詢狀態與列出所有 VM。

## 使用方式

在 PowerShell 中執行腳本並輸入操作指令：

```
vm-control.ps1 <指令>
```

### 支援的指令

- `start`：啟動指定的虛擬機（以 headless 模式）
- `stop`：透過 ACPI 方式關機
- `poweroff`：強制關機
- `status`：顯示目前正在運行中的虛擬機
- `list`：列出所有已註冊的虛擬機

## 設定

請依照實際情況修改腳本中的以下變數：

```powershell
$VBoxManage = 'C:\Program Files\Oracle\VirtualBox\VBoxManage.exe'
$vmName = 'UbuntuServer_24.04'
```

## 注意事項

- 請確認已安裝 VirtualBox 並將其路徑正確設定。
- 執行腳本前請切換至含有此檔案的目錄或提供完整路徑。
