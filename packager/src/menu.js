const { shell, dialog } = require('electron');


const menuTemplate = [
    {
        label: 'Ayuda',
        submenu: [
            {
                label: 'Sobre Miyuki',
                click: () => {
                    dialog.showMessageBox({type: "info", title: "Sobre Miyuki", message: "TODO"})
                }
            },
            {
                label: 'Licencia',
                click: () => {
                    
                }
            },
            {
                label: 'Reporte de errores',
                click: () => {
                    shell.openExternal('https://github.com/flbulgarelli/miyuki/issues');
                }
            },
            {
                label: 'Unite a nuestra comunidad en discord',
                click: () => {
                    shell.openExternal('https://discord.gg/Ak4ee7fcSM');
                }
            }
        ]
    }
];

module.exports = menuTemplate;