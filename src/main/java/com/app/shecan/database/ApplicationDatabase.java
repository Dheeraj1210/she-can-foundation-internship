package com.app.shecan.database;

import com.app.shecan.model.Application;
import java.util.List;
import java.util.ArrayList;

public class ApplicationDatabase {

    private static final List<Application> memoryDB = new ArrayList<>();

    public boolean saveApplication(Application app){
        if(app == null) return false;
        memoryDB.add(app);

        System.out.println("New Entry saved successfully");
        System.out.println("Total Application in Queue:" + memoryDB.size());
        return true;
    }

    public List<Application> getALlApplication(){
        return new ArrayList<>(memoryDB);
    }
}
