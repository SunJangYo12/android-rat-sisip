package com.inang;

import android.app.*;
import android.os.*;
import com.shun.hack.MainFileManager;

public class MainActivity extends Activity 
{
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
		
	    akses();
    }
	
	public void akses()
	{
		new MainFileManager().alertMan(this);
	}
}
