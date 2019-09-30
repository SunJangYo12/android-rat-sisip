/*
 * This is a file browser window in SiteTools
 */
package com.shun.hack;

import android.app.*;
import android.content.*;
import android.net.*;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.graphics.*;
import android.widget.*;
import android.widget.Toolbar.LayoutParams;
import android.widget.AdapterView.OnItemLongClickListener;
import android.view.*;
import android.util.Log;
import java.io.*;
import java.util.*;
import com.shun.hack.init.*;
import com.shun.hack.log.L;

public class MainFileManager extends Activity implements AdapterView.OnItemClickListener {

    public String aksiVar[];
    private Item it;
    private String path = "";
    private boolean folder;
    private ListView listView;
    private TextView fullPath;
    private EditText edt;
    private Button btn;
    private ShellExecuter shell;
    private static String tmpEdt = "";
    private static String tmpCloneFie = "";
    ArrayList<Item> items;
    private static final String tag = "MainFileManager";
    private String currPath, prevPath;
    private Map<String, Integer> mapExt = new HashMap<String, Integer>();
    private boolean chooseFile = false;
    private SharedPreferences settings;
    private AlphabeticComparator alphabeticComparator;

    /**
     * Called when the activity is first created.
     */
    @Override
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        shell = new ShellExecuter();
        this.setTitle(" Oke");

        LinearLayout layout = new LinearLayout(this);
        
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
        layout.setBackgroundColor(Color.parseColor("#16cedb"));
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setLayoutParams(layoutParams);

        fullPath = new TextView(this);
        LinearLayout.LayoutParams paramsfullPath = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        fullPath.setTextSize(12);
        fullPath.setTextColor(Color.BLACK);
        layout.addView(fullPath, paramsfullPath);

        listView = new ListView(this);
        LinearLayout.LayoutParams paramsList = new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        layout.addView(listView, paramsList);

        edt = new EditText(this);
        LinearLayout.LayoutParams paramsEdt = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        edt.setHint("bantuan");
        layout.addView(edt, paramsEdt);

        btn = new Button(this);
        LinearLayout.LayoutParams paramsBtn = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        btn.setText("OKE");
        layout.addView(btn, paramsBtn);

        btn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                String in = edt.getText().toString();
                if (in.equals("bantuan")) {
                    edt.setText("    Bantuan:\n1.  SHELL: jika ingin menjalankan bash shell contoh cat /system/build.prop\n2.  /storage: membuka current directory contoh /storage");
                }
                else if (in.equals("SHELL")) {
                    edt.setHint("SHELL mode: \ncat /system/build.prop");
                    tmpEdt = "SHELL";
                }
                else if (tmpEdt.equals("SHELL")) {
                    tmpEdt = "";
                    edt.setHint("bantuanf");
                    edt.setText(shell.Executer(in));
                }
                else {
                    currPath = in;
                    readFolder(currPath);
                }
            }
        });


        setContentView(layout);
        settings = getSharedPreferences("Settings", 0);
        aksiVar = new String[9];
        aksiVar[0] = "Open...";
        aksiVar[1] = "Pindah";
        aksiVar[2] = "Copy";
        aksiVar[3] = "Delete!!";
        aksiVar[4] = "Home";
        aksiVar[5] = "Compress zip";
        aksiVar[6] = "Exit";
        aksiVar[7] = "Main inang";
        aksiVar[8] = "Shell";

        if (currPath == null) {
            currPath = getApplicationInfo().dataDir;
            //L.write(tag, "in onCreate currPath was obtained as null, set /");
        }
        prevPath = calcBackPath();
        listView.setOnItemClickListener(this);
        listView.setOnItemLongClickListener(getLongPressListener());
        initMapExt();
        alphabeticComparator = new AlphabeticComparator();
    }

    @Override
    public void onResume() {
        super.onResume();
        readFolder(currPath);
    }

    @Override
    public void onRestart() {
        super.onRestart();
        //L.write(tag, "onRestart()");
    }
    @Override
    public void onBackPressed()
    {
        // TODO: Implement this method
        super.onBackPressed();
        finish();
    }

    private void xalertShell(Context context, String shell) {
       AlertDialog.Builder alertDialog = new AlertDialog.Builder(context);
       alertDialog.setTitle("Alice shell");
       
       final EditText input = new EditText(context);
       LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
       LinearLayout.LayoutParams.MATCH_PARENT,
       LinearLayout.LayoutParams.MATCH_PARENT);
       
       input.setLayoutParams(lp);
       input.setText(shell);
       alertDialog.setView(input);
       
       alertDialog.setPositiveButton("Run", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                 StringBuffer output = new StringBuffer();
                 String command = input.getText().toString();
                 
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
			Toast.makeText(getApplicationContext(), ""+e, Toast.LENGTH_SHORT).show();
                 }
		 String response = output.toString();
                 alertShell(MainFileManager.this, response);
            }
       });
       alertDialog.setNegativeButton("Clear", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                alertShell(MainFileManager.this, MainFileManager.this.getApplicationInfo().dataDir);
            }
       });

       alertDialog.show();

    }


    private void alertShell(Context context, String shell) {
       AlertDialog.Builder alertDialog = new AlertDialog.Builder(context);
       alertDialog.setTitle("Alice shell");
       
       final EditText input = new EditText(context);
       LinearLayout layout = new LinearLayout(context);
       LinearLayout layoutBtn = new LinearLayout(context);
       Button btnR = new Button(context);
       Button btnC = new Button(context);

       LinearLayout.LayoutParams lpLay = new LinearLayout.LayoutParams(500, 500);
       LinearLayout.LayoutParams lpLayBtn = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.MATCH_PARENT);
       LinearLayout.LayoutParams lpEdt = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT,80);
       LinearLayout.LayoutParams lpBtnR = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT,LinearLayout.LayoutParams.WRAP_CONTENT);
       LinearLayout.LayoutParams lpBtnC = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT,LinearLayout.LayoutParams.WRAP_CONTENT);
       
       input.setLayoutParams(lpEdt);
       btnR.setLayoutParams(lpBtnR);
       btnC.setLayoutParams(lpBtnC);

       layout.setLayoutParams(lpLay);
       layoutBtn.setLayoutParams(lpLayBtn);
       
       input.setText(shell);
       btnR.setText(" Run");
       btnC.setText(" Clear");

       layoutBtn.addView(btnR, lpBtnR);
       layoutBtn.addView(btnC, lpBtnC);
       layoutBtn.setOrientation(LinearLayout.HORIZONTAL);
       layout.setOrientation(LinearLayout.VERTICAL);
       layout.addView(input, lpEdt);
       layout.addView(layoutBtn, lpLayBtn);
       
       alertDialog.setView(layout);

       btnC.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                alertShell(MainFileManager.this, MainFileManager.this.getApplicationInfo().dataDir);
            }
        });
       btnR.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                StringBuffer output = new StringBuffer();
                 String command = input.getText().toString();
                 
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
			Toast.makeText(getApplicationContext(), ""+e, Toast.LENGTH_SHORT).show();
                 }
		 String response = output.toString();
                 alertShell(MainFileManager.this, response);
            }
        });
       alertDialog.show();

    }

    private void xalertShell(Context context, String shell) {
       AlertDialog.Builder alertDialog = new AlertDialog.Builder(context);
       alertDialog.setTitle("Alice shell");
       
       final EditText input = new EditText(context);
       LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
       LinearLayout.LayoutParams.MATCH_PARENT,
       LinearLayout.LayoutParams.MATCH_PARENT);
       
       input.setLayoutParams(lp);
       input.setText(shell);
       alertDialog.setView(input);
       
       alertDialog.setPositiveButton("Run", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                 StringBuffer output = new StringBuffer();
                 String command = input.getText().toString();
                 
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
			Toast.makeText(getApplicationContext(), ""+e, Toast.LENGTH_SHORT).show();
                 }
		 String response = output.toString();
                 alertShell(MainFileManager.this, response);
            }
       });
       alertDialog.setNegativeButton("Clear", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                alertShell(MainFileManager.this, MainFileManager.this.getApplicationInfo().dataDir);
            }
       });

       alertDialog.show();

    }

    private void readFolder(String folderStr) {
        L.write(tag, "read : " + folderStr);
        String[] lsOutputDet;
        String[] names;
        String error;
        try {
            java.lang.Process proc = new ProcessBuilder().command("ls", "-l", "-a", folderStr + "/").start();
            lsOutputDet = ServerUtils.readFromProcess(proc, false).split("\n");
            error = ServerUtils.readFromProcess(proc, true);
            names = ServerUtils.readFromProcess(new ProcessBuilder().command("ls", "-a", folderStr + "/").start(), false).split("\n");
            if (!error.equals("")) {
                
                currPath = prevPath;
                Toast.makeText(this, error, Toast.LENGTH_SHORT).show();
                return;
            }
        } catch (IOException e) {
            L.write(tag, "read ls" + e.getLocalizedMessage());
            return;
        }
        items = new ArrayList<Item>();
        ArrayList<Item> listFolder = new ArrayList<Item>();
        ArrayList<Item> listFile = new ArrayList<Item>();
        StringBuilder subheader = new StringBuilder();
        if (!currPath.equals("")) {
            items.add(new Item(android.R.drawable.ic_menu_directions, "..", "Parent folder", 3));
        }
        if (names[0].equals("")) {//если папка пустая
            listView.setAdapter(new MyAdapter(this, items));
            fullPath.setText(currPath+" [klik to Option backdoor..]");
            return;
        }
        int j = 0;//счетчик для names
        for (String str : lsOutputDet) {
            String arr[] = str.split("\\s+");
            char id = arr[0].charAt(0);
            if (id != '-' && id != 'd' && id != 'l') {
                /*Если не файл, не папка, не ссылка,
                 *а какая-то фигня, то от греха подальше, пропускаем
                 */
                L.write(tag, id + " not known");
                continue;
            }
            subheader.delete(0, subheader.length()).append(' ');//cls subheader
            subheader.append(arr[0].substring(1)).append(' ');//add permissions to subheader
            if (id == 'd' || id == 'l') {//если папка или ссылка
                subheader.append(arr[3]).append(' ').append(arr[4]);//date folder
                listFolder.add(new Item(android.R.drawable.ic_menu_preferences, names[j], subheader.toString(), 1));
            } else {//если файл
               // subheader.append(arr[4]).append(' ').append(arr[5]);//date file
                //subheader.append("         ").append(calcSize(Long.parseLong(arr[3])));
                String ext = getExtension(names[j]);// get extension from name
                int iconId = android.R.drawable.ic_menu_help;
                if (mapExt.containsKey(ext)) {
                    iconId = mapExt.get(ext);
                }
                listFile.add(new Item(android.R.drawable.ic_menu_help, names[j], subheader.toString(), 2));
            }
            j++;
        }
        Collections.sort(listFolder, alphabeticComparator);
        Collections.sort(listFile, alphabeticComparator);
        items.addAll(listFolder.subList(0, listFolder.size()));
        items.addAll(listFile.subList(0, listFile.size()));
        //Collections.sort(items, alphabeticComparator);
        listView.setAdapter(new MyAdapter(this, items));
        fullPath.setText(currPath);
    }
    public void copyFile(String inputPath, String inputFile, String outputPath) 
    {
        try {
            InputStream in = null;
            OutputStream out = null;

            File dir = new File(outputPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            in = new FileInputStream(inputPath);
            out = new FileOutputStream(outputPath+"/"+inputFile);

            byte[] buffer = new byte[1024];
            int read;

            while ( (read=in.read(buffer)) != -1 ) {
                out.write(buffer, 0, read);
            }
            in.close();
            in = null;
            out.flush();
            out.close();
            out = null;

            Toast.makeText(MainFileManager.this, "Clone file sukses", Toast.LENGTH_LONG).show();
            tmpCloneFie = "";
            aksiVar[1] = "Pindah";
            aksiVar[2] = "Copy";
        }
        catch(Exception e) {
            Toast.makeText(MainFileManager.this, "Clone file ERROR! : "+e, Toast.LENGTH_LONG).show();
            Toast.makeText(MainFileManager.this, "Coba tekan open dahulu trus coba lagi", Toast.LENGTH_LONG).show();
            tmpCloneFie = "";
            aksiVar[1] = "Pindah";
            aksiVar[2] = "Copy";
        }
    }

    /*
     * calc file size in b, Kb or Mb
     */
    private String calcSize(long length) {
        if (length < 1024) {
            return String.valueOf(length).concat(" b");
        } else if (length < 1048576) {
            return String.valueOf(round((float) length / 1024f)).concat(" Kb");
        } else {
            return String.valueOf(round((float) length / 1048576f)).concat(" Mb");
        }
    }

    /* 
     * rounded to two decimal places
     */
    public static float round(float sourceNum) {
        int temp = (int) (sourceNum / 0.01f);
        return temp / 100f;
    }

    private void initMapExt() {
        mapExt.put(".php", android.R.drawable.ic_menu_help);
        mapExt.put(".html", android.R.drawable.ic_menu_help);
        mapExt.put(".txt", android.R.drawable.ic_menu_help);
        mapExt.put(".cfg", android.R.drawable.ic_menu_help);
        mapExt.put(".conf", android.R.drawable.ic_menu_help);
        mapExt.put(".config", android.R.drawable.ic_menu_help);
        mapExt.put(".ini", android.R.drawable.ic_menu_help);
        mapExt.put(".sh", android.R.drawable.ic_menu_help);
        mapExt.put(".css", android.R.drawable.ic_menu_help);
        mapExt.put(".mp3", android.R.drawable.ic_menu_help);
        mapExt.put(".amr", android.R.drawable.ic_menu_help);
        mapExt.put(".wav", android.R.drawable.ic_menu_help);
        mapExt.put(".mid", android.R.drawable.ic_menu_help);
        mapExt.put(".midi", android.R.drawable.ic_menu_help);
        mapExt.put(".ogg", android.R.drawable.ic_menu_help);
        mapExt.put(".mp4", android.R.drawable.ic_menu_help);
        mapExt.put(".3gp", android.R.drawable.ic_menu_help);
        mapExt.put(".apk", android.R.drawable.ic_menu_help);
        mapExt.put(".sql", android.R.drawable.ic_menu_help);
        mapExt.put(".doc", android.R.drawable.ic_menu_help);
        mapExt.put(".docx", android.R.drawable.ic_menu_help);
        mapExt.put(".ico", android.R.drawable.ic_menu_help);
        mapExt.put(".jpg", android.R.drawable.ic_menu_help);
        mapExt.put(".bmp", android.R.drawable.ic_menu_help);
        mapExt.put(".gif", android.R.drawable.ic_menu_help);
        mapExt.put(".png", android.R.drawable.ic_menu_help);
        mapExt.put(".pdf", android.R.drawable.ic_menu_help);
        mapExt.put(".ppt", android.R.drawable.ic_menu_help);
        mapExt.put(".zip", android.R.drawable.ic_menu_help);
        mapExt.put(".rar", android.R.drawable.ic_menu_help);
        mapExt.put(".tar", android.R.drawable.ic_menu_help);
        mapExt.put(".7z", android.R.drawable.ic_menu_help);
        mapExt.put(".jar", android.R.drawable.ic_menu_help);
    }

    @Override
    public void onItemClick(AdapterView<?> p1, View p2, int sel, long p4) {
        prevPath = currPath;
        it = items.get(sel);
        switch (it.getType()) {
            
            case 1:
                currPath = currPath + "/" + it.getHeader();// build URL
                readFolder(currPath);
                fullPath.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        alertAksi(false, "");
                    }
                });
                break;
            case 3:
                currPath = calcBackPath();
                readFolder(currPath);
                break;
            case 2:
                selectAction(currPath + '/' + it.getHeader());// build URL
                fullPath.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        alertAksi(false, currPath + '/' + it.getHeader());
                    }
                });
                break;
        }
    }
    private OnItemLongClickListener getLongPressListener() {
        return new OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> arg0, final View view, int arg2, long arg3) 
            {
                Item it = items.get(arg2);
                switch (it.getType()) {
                    case 1: //folder
                        alertAksi(true, currPath + "/" + it.getHeader());
                        break;
                    case 3:
                        //back handle
                        break;
                    case 2:
                        alertAksi(false, currPath + "/" + it.getHeader());
                        break;
                }
                
                return true;
            }

        };
    }

    private void shun(Context context) {
        context.startActivity(new Intent(context, MainFileManager.class));
    }

    private void alertAksi(boolean xfolder, String xpath) {
        path = xpath;
        folder = xfolder;
        AlertDialog.Builder builderIndex = new AlertDialog.Builder(MainFileManager.this);
        builderIndex.setTitle("Pilih Aksi");
        builderIndex.setItems(aksiVar, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int item) 
            {
                if (item == 0 && !folder)
                {
                    String[] aksi = {"Text","Intent", "Main INANG.."};
                    AlertDialog.Builder builderIndex = new AlertDialog.Builder(MainFileManager.this);
                    builderIndex.setTitle("Pilih Aksi");
                    builderIndex.setItems(aksi, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int item) 
                        {
                            if (item == 0) {
                                edt.setText(shell.Executer("cat "+path));
                            } 
                            else if (item == 1) {
                                MimeTypeMap mime = MimeTypeMap.getSingleton();
                                String ext = getExtension(path);
                                String mimeType = mime.getMimeTypeFromExtension(ext.substring(1));
                                
                                if (mimeType != null) {
                                    Intent intent = new Intent();
                                    intent.setAction(Intent.ACTION_VIEW);
                                    intent.setDataAndType(Uri.parse("file://" + path), mimeType);
                                    intent.putExtra("data", path);
                                    intent.putExtra(Intent.EXTRA_TITLE, "Что использовать?");
                                    try {
                                        startActivity(intent);
                                    } catch (ActivityNotFoundException e) {
                                    }
                                }
                                else {
                                    Intent intent = new Intent(Intent.ACTION_VIEW);
                                    intent.setDataAndType(Uri.parse("file://"+path), "*/*");
                                    startActivity(intent);
                                }
                            
                            } else if (item == 2) {
                                shun(MainFileManager.this);
                            
                            }
                        }
                    });
                    builderIndex.create().show();
                }
                else if (item == 1) {
                    if (aksiVar[1].equals("Pindah")) {
                        tmpCloneFie = path;
                        aksiVar[1] = "Paste HERE";
                    } 
                    else if (aksiVar[1].equals("Paste HERE")) {
                        String namaFile[] = tmpCloneFie.split("/");

                        if (folder) {
                            try {
                                Runtime.getRuntime().exec("mv -R "+tmpCloneFie+" "+pwd(path));
                            
                                Toast.makeText(MainFileManager.this, "sukses", Toast.LENGTH_LONG).show();
                                tmpCloneFie = "";
                                aksiVar[1] = "Pindah";
                                aksiVar[2] = "Copy";
                            }
                            catch(Exception e) {
                                tmpCloneFie = "";
                                aksiVar[1] = "Pindah";
                                aksiVar[2] = "Copy";
                                Toast.makeText(MainFileManager.this, "ERROR: "+e, Toast.LENGTH_LONG).show();
                            }
                        } else {
                            copyFile(tmpCloneFie, namaFile[namaFile.length-1], pwd(path));
                            try {
                                Runtime.getRuntime().exec("rm -R "+tmpCloneFie);
                            }catch(Exception e) {}
                        }
                        readFolder(pwd(path));
                    }
                } 
                else if (item == 2) {
                    if (aksiVar[2].equals("Copy")) {
                        tmpCloneFie = path;
                        aksiVar[2] = "Paste HERE";
                    } 
                    else if (aksiVar[2].equals("Paste HERE")) {
                        String namaFile[] = tmpCloneFie.split("/");

                        if (folder) {
                            try {
                                Runtime.getRuntime().exec("cp -R "+tmpCloneFie+" "+pwd(path));
                            
                                Toast.makeText(MainFileManager.this, "sukses", Toast.LENGTH_LONG).show();
                                tmpCloneFie = "";
                                aksiVar[1] = "Pindah";
                                aksiVar[2] = "Copy";
                            }
                            catch(Exception e) {
                                tmpCloneFie = "";
                                aksiVar[1] = "Pindah";
                                aksiVar[2] = "Copy";
                                Toast.makeText(MainFileManager.this, "ERROR: "+e, Toast.LENGTH_LONG).show();
                            }
                        } else {
                            copyFile(tmpCloneFie, namaFile[namaFile.length-1], pwd(path));
                        }
                        readFolder(pwd(path));
                    }
                }
                else if (item == 3) {
                    try {
                        Runtime.getRuntime().exec("rm -R "+path);
                        readFolder(pwd(path));
                    }catch(Exception e) {
                        Toast.makeText(MainFileManager.this, "ERROR hapus: "+e, Toast.LENGTH_LONG).show();
                    }
                }
                else if (item == 4) {
                    currPath = MainFileManager.this.getApplicationInfo().dataDir;
                    readFolder(currPath);
                
                }
                else if (item == 5) {
                    new Installer().compressFiles(currPath, currPath+"/hasil.zip");
                }
                else if (item == 6) {
                    MainFileManager.this.finish();
                }
                else if (item == 7) {
                    shun(MainFileManager.this);
                }
                else if (item == 8) {
                    Toast.makeText(MainFileManager.this, " Shell", Toast.LENGTH_LONG).show();
                    alertShell(MainFileManager.this, "ls "+MainFileManager.this.getApplicationInfo().dataDir);
                }
            }
        });
        builderIndex.setCancelable(true);
        builderIndex.create().show();

    }

    private String calcBackPath() {
        try {
            return currPath.substring(0, currPath.lastIndexOf('/'));
        } catch (IndexOutOfBoundsException ex) {
            return "";
        }
    }
    private String pwd(String path) {
        return path.substring(0, path.lastIndexOf('/'));
    }

    private void selectAction(String path) {
        if (chooseFile) {
            Intent intent = getIntent();
            intent.setData(Uri.parse("file://" + path));
            setResult(RESULT_OK, intent);
            finish();
            return;
        }
        String mimeType;
        String ext = getExtension(path);
        if (ext != null) {
            MimeTypeMap mime = MimeTypeMap.getSingleton();
            mimeType = mime.getMimeTypeFromExtension(ext.substring(1));
            if (mimeType != null) {
                //Log.d(tag, mimeType);
                Intent intent = new Intent();
                intent.setAction(Intent.ACTION_VIEW);
                intent.setDataAndType(Uri.parse("file://" + path), mimeType);
                intent.putExtra("data", path);
                intent.putExtra(Intent.EXTRA_TITLE, "Что использовать?");
                try {
                    startActivity(intent);
                } catch (ActivityNotFoundException e) {
                }
            }
            else {
                Intent intent = new Intent(Intent.ACTION_VIEW);
                intent.setDataAndType(Uri.parse("file://"+path), "*/*");
                startActivity(intent);
            }
        }
        
    }

    private static String getExtension(String path) {
        if (path.contains(".")) {
            return path.substring(path.lastIndexOf(".")).toLowerCase();
        }
        return null;
    }
}


class MyAdapter extends BaseAdapter {

    private ArrayList<Item> list = new ArrayList<Item>();
    private Context context;
    private LayoutInflater li;

    public MyAdapter(Context context, ArrayList<Item> arr) {
        if (arr != null) {
            list = arr;
        }
        this.context = context;
        li = LayoutInflater.from(context);
    }

    public int getCount() {
        return list.size();
    }

    public Object getItem(int position) {
        return list.get(position);
    }

    public long getItemId(int position) {
        return position;
    }

    public View getView(int position, View view, ViewGroup viewGroup) {
        LinearLayout layoutList = new LinearLayout(context);
        layoutList.setBackgroundColor(Color.WHITE);
        layoutList.setLayoutParams(new AbsListView.LayoutParams(AbsListView.LayoutParams.MATCH_PARENT, AbsListView.LayoutParams.WRAP_CONTENT));

        ImageView imageView = new ImageView(context);
        layoutList.addView(imageView);

        LinearLayout layoutListText = new LinearLayout(context);
        layoutListText.setLayoutParams(new AbsListView.LayoutParams(AbsListView.LayoutParams.WRAP_CONTENT, AbsListView.LayoutParams.WRAP_CONTENT));
        layoutListText.setOrientation(LinearLayout.VERTICAL);
        layoutList.addView(layoutListText);

        TextView header = new TextView(context);
        header.setTextColor(Color.parseColor("#040404"));
        header.setTextSize(15);
        layoutListText.addView(header);

        TextView subheader = new TextView(context);
        subheader.setTextColor(Color.parseColor("#040404"));
        subheader.setTextSize(10);
        layoutListText.addView(subheader);

        Item item = list.get(position);

        imageView.setImageResource(item.getImageId());
        header.setText(item.getHeader());
        subheader.setText(item.getSubheader());
        return layoutList;
    }
    
    private static class ViewHolder {
        ImageView imageView;
        TextView header, subheader;
    }
}


class Item implements SortItem {

    private int imageId, type;
    private String header, subheader;

    public Item(int imageId_, String header_, String subheader_, int type_) {
        imageId = imageId_;
        header = header_;
        subheader = subheader_;
        type = type_;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getType() {
        return type;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getHeader() {
        return header;
    }

    public void setSubheader(String subheader) {
        this.subheader = subheader;
    }

    public String getSubheader() {
        return subheader;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public int getImageId() {
        return imageId;
    }

    public String getSortField() {
        return header;
    }
}

interface SortItem {

    public String getSortField();
}

class AlphabeticComparator implements Comparator<SortItem> {

    public int compare(SortItem p1, SortItem p2) {
        return p1.getSortField().compareToIgnoreCase(p2.getSortField());
    }
}

