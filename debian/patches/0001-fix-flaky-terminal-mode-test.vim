Description: Fix flaky vim test
Author: Spyros Seimenis <spyros.seimenis@canonical.com>
Last-Update: 2021-11-05

--- a/src/testdir/test_terminal.vim
+++ b/src/testdir/test_terminal.vim
@@ -392,6 +392,7 @@
   call VerifyScreenDump(buf, 'Test_terminal_scrollback_2', {})
 
   " Back to Terminal-Job mode, text will scroll and show the extra line.
+  call TermWait(buf, 200)
   call term_sendkeys(buf, "a")
   call VerifyScreenDump(buf, 'Test_terminal_scrollback_3', {})
 
