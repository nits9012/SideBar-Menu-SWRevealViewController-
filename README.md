# SideBar-Menu-SWRevealViewController-

![alt tag](https://cloud.githubusercontent.com/assets/19264044/15501777/f0d90ee2-21cc-11e6-8c23-e29877d52987.png)

To implement SWRevealViewController first download the library from the https://github.com/John-Lluch/SWRevealViewController and extract the zipped file , After you extract the file, open SWRevealViewController folder, In that folder, there are two files “SWRevealViewController.h" and “SWRevealViewController.m". Drag and Drop these files in your project, Then Xcode will generate a header file

![screen shot 2016-05-27 at 12 20 22 pm](https://cloud.githubusercontent.com/assets/19264044/15600787/c8a2e396-2409-11e6-9be7-94cd44a65c93.png)

Click on Create Bridging Header , open your SWRevealViewController-Bridging-Header.h file then write the following line in your file : -

#import “SWRevealViewController.h"


After that, Go to storyboard and assign a “SWRevealViewController” class to view controller.

![screen shot 2016-05-27 at 12 21 38 pm](https://cloud.githubusercontent.com/assets/19264044/15600877/68418628-240a-11e6-90e5-cccfe46f9e49.png)



Next step to Drag and Drop the two view controller , and create two files “FirstViewController.swift” and “SecondViewController.swift” assign these file to view controllers.



Select FirstViewController form the Main.storyboard , then click on Editor -> Embed in -> Navigation Controller



then draw a “reveal view controller push controller” from SWRevealViewController to First View Controller. After that set its identifier “sw_front”, follow the same procedure form 

second one and set its identifier “sw_rear”



![screen shot 2016-05-27 at 12 21 38 pm](https://cloud.githubusercontent.com/assets/19264044/15600877/68418628-240a-11e6-90e5-cccfe46f9e49.png)



then  drag and drop a bar button on FirstViewController create its outlet 

![screen shot 2016-05-27 at 12 34 53 pm](https://cloud.githubusercontent.com/assets/19264044/15601209/06ef8efe-240c-11e6-93c1-89b8c8c56152.png)



Write this code on FirstViewController.swift , and follow this procedure form other view controller



 if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
  }



![alt tag](https://cloud.githubusercontent.com/assets/19264044/15501778/f199bf7a-21cc-11e6-8ce3-76b0ed39431c.png)

