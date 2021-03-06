pyinstaller --name=Syncnet --icon=syncnet512.icns \
--runtime-hook rthook_pyqt4.py --clean --noconfirm --windowed \
--hidden-import="enaml.core.parse_tab.lextab" \
--hidden-import="enaml.core.compiler_helpers" \
--hidden-import="enaml.core.compiler_nodes" \
--hidden-import="enaml.core.enamldef_meta" \
--hidden-import="enaml.core.template" \
--hidden-import="enaml.widgets.api" \
--hidden-import="enaml.widgets.form" \
--hidden-import="enaml.layout.api" \
syncnet/main.py

cp syncnet/syncnet_view.enaml \
   syncnet/new_site_dialog.enaml \
   syncnet/new_site_controller.py \
   dist/SyncNet.app/Contents/MacOS/

cp -r /Applications/BitTorrent\ Sync.app dist/SyncNet.app/Contents/MacOS/

rm -rf Syncnet.app
mv dist/Syncnet.app .

rm Syncnet.spec
rm -rf dist
rm -rf build
