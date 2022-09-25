# RAMMap Task Scheduler
Windows BAT File to create scheduled tasks for RAMMap.

## Details
This script will create and/or delete scheduled tasks for the different RAMMap commands. Upon creation, the specified task(s) will run every 5 minutes indefinitely from the time of creation.

## Instructions


 * Download the [RAMMap](https://download.sysinternals.com/files/RAMMap.zip) zip file and extract it to a location of your choice.
 * Download the [RAMMap Task Scheduler](https://raw.githubusercontent.com/NimbiDev/RAMMap-Task-Scheduler/main/RAMMap%20Task%20Scheduler.bat) bat file and place it in a safe place of your choice.
 * Open the [RAMMap Task Scheduler](https://raw.githubusercontent.com/NimbiDev/RAMMap-Task-Scheduler/main/RAMMap%20Task%20Scheduler.bat) bat file in a text editor and add your RAMMap.exe path in the following line:

```ini
SET EXE_PATH=
```

**EXAMPLE**:

```ini
SET EXE_PATH=%ProgramFiles%\RamMap\RAMMap.exe
```

 * Once you have set your RAMMap.exe path, simply run the [RAMMap Task Scheduler](https://raw.githubusercontent.com/NimbiDev/RAMMap-Task-Scheduler/main/RAMMap%20Task%20Scheduler.bat) bat file as Administrator and follow the prompts to CREATE and/or DELETE your chosen RAMMap tasks.
