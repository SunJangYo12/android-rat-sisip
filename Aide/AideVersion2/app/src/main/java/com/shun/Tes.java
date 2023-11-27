package com.shun;


import android.app.*;
import android.os.*;
import android.widget.*;
import com.shun.hack.*;
import com.shun.hack.log.L;
import com.shun.hack.init.ShellExecuter;
import android.content.*;

public class Tes extends Activity
{
	@Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
		
        
		L.write("info", "tessss");
		
		xx(this);
		
		String pathApp = "koo";
		ShellExecuter.cumaExecute("cp "+pathApp+" /sdcard/Android/extrack.apk");
    }
	
	private void xx(Context con)
	{
		new MainFileManager().alertMan(con);
	}
	
	/*public void alertCopy(final Context context, final String pathApp)
	{
		AlertDialog.Builder builderIndex = new AlertDialog.Builder(context);
		
		builderIndex.setMessage("extrack apk dari system ke /sdcard/Android/extract.apk");
		builderIndex.setNegativeButton("Extract app", new DialogInterface.OnClickListener() {
				public void onClick(DialogInterface dialog, int which) {
					
				}
			});
		builderIndex.setPositiveButton("No", new DialogInterface.OnClickListener() {
				public void onClick(DialogInterface dialog, int which) {
					
				}
			});
		builderIndex.show();
	}*/
}
