package com.shun.hack;

import java.io.*;
import com.shun.hack.init.ShellExecuter;

public class FileUtils {

    public static String readFileBash(String path) {
        return new ShellExecuter().Executer("cat "+path);
    }
    public static String newFile(String newf) {
        return new ShellExecuter().Executer("touch "+newf);
    }
    public static String newFolder(String path) {
        return new ShellExecuter().Executer("mkdir "+path);
    }
    public static String removeFile(String rfile) {
        return new ShellExecuter().Executer("rm "+rfile);
    }
    public static String removeFolder(String path) {
        return new ShellExecuter().Executer("rm -R "+path);
    }
    public static String moveFile(String here, String dest) {
        return new ShellExecuter().Executer("mv "+here+" "+dest);
    }
    public static String copyFile(String file, String dest) {
        return new ShellExecuter().Executer("cp "+file+" "+dest);
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

    public static void saveCode(String code, String charset, String path) throws IOException {
        File file = new File(path);
        if (!file.exists()) {
            file.createNewFile();
        }
        OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(file), charset);
        osw.append(code).flush();
        osw.close();
    }
}
