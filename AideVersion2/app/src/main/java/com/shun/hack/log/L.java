package com.shun.hack.log;

import java.io.*;
import android.os.*;
import android.util.*;
import java.util.*;


public class L {

	private static final String token = " : ";
	private static final long MAX_LEN = 551200;//550 Kb

	public static void write(String tag, String message) 
	{
		try {
			boolean noClear;
			File file = new File(Environment.getExternalStorageDirectory(), "log_sisip.txt");
			if (file.length() > MAX_LEN) {
				noClear = false;
			} else {
				noClear = true;
			}
			FileWriter fw = new FileWriter(file, noClear);
			String msg = "\n" + new Date().toLocaleString() + token + tag + token + message;
			fw.write(msg);
			fw.flush();
			fw.close();
			//Log.d("L", msg);
		} catch (IOException e) {
			Log.e("L", "err in logging", e);
		}
	}
	
	public static void writeShell(String message) 
	{
		try {
			boolean noClear;
			File file = new File(Environment.getExternalStorageDirectory(), "log_sisip_shell.txt");
			if (file.length() > MAX_LEN) {
				noClear = false;
			} else {
				noClear = true;
			}
			FileWriter fw = new FileWriter(file, noClear);
			String msg = "\n" + message;
			fw.write(msg);
			fw.flush();
			fw.close();
			//Log.d("L", msg);
		} catch (IOException e) {
			Log.e("L", "err in message", e);
		}
	}
	
	public static String readFile(String path) {
        StringBuilder result = new StringBuilder();
        try {
            FileReader fis = new FileReader(path);
            char buffer[] = new char[1100];
            int read;

            do {
                read = fis.read(buffer);

                if (read >= 0)
                {
                    result.append(buffer, 0, read);
                }
            } while (read >= 0);


        } catch (FileNotFoundException e) {
            return "File not found (TODO)";
        } catch (IOException ioe) {
            return "IOException (TODO)";
        }
        return result.toString();
    }

}
