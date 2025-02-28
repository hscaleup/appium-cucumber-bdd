package com.shoal.qa.mobile.manager;

import com.shoal.qa.mobile.utils.CommonUtils;
import com.shoal.qa.mobile.utils.GlobalParams;
import io.appium.java_client.screenrecording.CanRecordScreen;
import org.apache.commons.codec.binary.Base64;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class VideoManager {
    CommonUtils utils = new CommonUtils();

    public void startRecording(){
        ((CanRecordScreen) new DriverManager().getDriver()).startRecordingScreen();
    }

    public void stopRecording(String scenarioName) throws IOException {
        GlobalParams params = new GlobalParams();
        String media = ((CanRecordScreen) new DriverManager().getDriver()).stopRecordingScreen();
        String dirPath = params.getPlatformName() + "_"
                + params.getDeviceName() + File.separator +"Videos";

        File videoDirectory = new File(dirPath);

        synchronized(videoDirectory){
            if(!videoDirectory.exists()) {
                videoDirectory.mkdirs();
            }
        }
        try (FileOutputStream stream = new FileOutputStream(videoDirectory + File.separator + scenarioName + ".mp4")) {
            stream.write(Base64.decodeBase64(media));
            stream.close();
            utils.log().info("video path: " + videoDirectory + File.separator + scenarioName + ".mp4");
        } catch (Exception e) {
            utils.log().error("error during video capture" + e.toString());
        }
    }
}
