package com.shun.hack.init;


import java.io.BufferedReader;
import java.io.InputStreamReader;

public class ShellExecuter {

	public ShellExecuter() {

	}
	
	public static void cumaExecute(String command)
	{
		try {
			Runtime.getRuntime().exec(command);
		}
		catch(Exception e)
		{
			
		}
	}

	public String Executer(String command) {

		StringBuffer output = new StringBuffer();

		Process p;
		try {
			p = Runtime.getRuntime().exec(command);
			p.waitFor();
			BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));

			String line = "";
			while ((line = reader.readLine())!= null) {
				output.append(line+"\n");
			}

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		String response = output.toString();
		return response;

	}
}
