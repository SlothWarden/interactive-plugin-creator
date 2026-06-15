echo "This is an interactive experience for creating a template for Paper Minecraft Java 26.1.2 server plugins using Maven"
sleep 4
echo "What is the name of the plugin?"
read name
cd ~
cd Desktop/
mkdir "$name"
cd "$name"
echo '<project xmlns="http://maven.apache.org/POM/4.0.0"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
         http://maven.apache.org/xsd/maven-4.0.0.xsd">
       <modelVersion>4.0.0</modelVersion>

       <groupId>com.example</groupId>
       <artifactId>my-plugin</artifactId>
       <version>1.0.0</version>
       <packaging>jar</packaging>

       <properties>
         <java.version>21</java.version>
         <maven.compiler.source>21</maven.compiler.source>
         <maven.compiler.target>21</maven.compiler.target>
       </properties>

       <repositories>
         <repository>
           <id>papermc</id>
           <url>https://repo.papermc.io/repository/maven-public/</url>
         </repository>
       </repositories>

       <dependencies>
         <dependency>
           <groupId>io.papermc.paper</groupId>
           <artifactId>paper-api</artifactId>
           <version>1.21.4-R0.1-SNAPSHOT</version>
           <scope>provided</scope>
         </dependency>
       </dependencies>

       <build>
         <plugins>
           <plugin>
             <groupId>org.apache.maven.plugins</groupId>
             <artifactId>maven-shade-plugin</artifactId>
             <version>3.6.0</version>
             <executions>
               <execution>
                 <phase>package</phase>
                 <goals><goal>shade</goal></goals>
               </execution>
             </executions>
           </plugin>
         </plugins>
       </build>
     </project>' > "pom.xml"
sleep 3
echo "Creating pom.xml..."
sleep 3
echo "Done creating pom.xml"
sleep 3
echo "Would you like a different package name than the plugin name(y/n)?"
read y
if [ "$y" = "y" ]; then
  sleep 3
  echo "Ok then, what's the package name?"
  read package
    mkdir "src"
    cd src
    mkdir main
   cd main
   mkdir java
   cd java
   mkdir com
   cd com
   mkdir "$package"
   cd "$package"

  sleep 3
  echo "Creating main plugin file..."
  echo "package com.$package;

       import org.bukkit.plugin.java.JavaPlugin;

       public final class $name extends JavaPlugin {

           @Override
           public void onEnable() {
               getLogger().info('$name has been enabled!');
               // Register commands and listeners here
           }

           @Override
           public void onDisable() {
               getLogger().info('$name has been disabled.');
           }
       }" > "$name.java"
sleep 3
echo "Main plugin file $name.java created"
sleep 3

  cd ..
  cd ..
  cd ..
  mkdir resources
  cd resources
  echo "Do you have a different ingame name for the plugin?(y/n)(Only say no if your plugin name doesn't have any special characters or spaces"
  read pluy
  if [ "$pluy" = "y" ]; then
    sleep 3
    echo "Enter the different ingame name for your plugin"
    read pluname

  sleep 3
  echo "What is the description of your plugin for plugin.yml"
  read description
  sleep 3
  echo "Who are the authors of your plugin"
  sleep 3
  read authors
  sleep 3
  echo "Does your plugin have commands?(y/n)"
  read comand
  sleep 3
  if [ "$comand" = "y" ]; then
    echo "Since it is hard to compensate for every command your plugin might need, see https://stacknests.com/how-to-make-minecraft-plugins for info on how to add commands to plugin.yml"


    fi


sleep 3
echo "Creating plugin.yml"
echo "name: $pluname
      version: '1.0.0'
      main: com.$package.$name
      api-version: '1.21'
      description: $description
      authors: [$authors]" > plugin.yml
           sleep 3
           echo "Done creating plugin.yml"
           sleep 3
           echo "Congrats, the plugin is done! Install Maven and get an IDE like intellij, then begin writing some code!"

else
    sleep 3
    echo "Then the name of the plugin will be the ingame name"
    sleep 3
    echo "What is the description of your plugin for plugin.yml"
    read description
    sleep 3
    echo "Who are the authors of your plugin"
    sleep 3
    read authors
    sleep 3
    echo "Does your plugin have commands?(y/n)"
    read comand
    sleep 3
    if [ "$comand" = "y" ]; then
      echo "Since it is hard to compensate for every command your plugin might need, see https://stacknests.com/how-to-make-minecraft-plugins for info on how to add commands to plugin.yml"


      fi


  sleep 3
  echo "Creating plugin.yml"
  echo "name: $name
        version: '1.0.0'
        main: com.$package.$name
        api-version: '1.21'
        description: $description
        authors: [$authors]" > "plugin.yml"
     sleep 3
     echo "Done creating plugin.yml"
     sleep 3
     echo "Congrats, the plugin is done! Install Maven and get an IDE like intellij, then begin writing some code!"


  fi



else
    sleep 3
    echo "Package name will be same as plugin name!"
    sleep 3
    mkdir "src"
    cd "src"

    mkdir "main"
    cd "main"
    mkdir java
    cd java
    mkdir com
    cd com
    mkdir "$name"
    cd "$name"

    echo "Creating main plugin file..."
    echo "package com.$name;

         import org.bukkit.plugin.java.JavaPlugin;

         public final class $name extends JavaPlugin {

             @Override
             public void onEnable() {
                 getLogger().info('$name has been enabled!');
                 // Register commands and listeners here
             }

             @Override
             public void onDisable() {
                 getLogger().info('$name has been disabled.');
             }
         }" > "$name.java"
  sleep 3
  echo "Main plugin file $name.java created"
  sleep 3
  cd ..
  cd ..
  cd ..
  mkdir resources
  cd resources
  echo "Do you have a different ingame name for the plugin?(y/n)(Only say no if your plugin name doesn't have any special characters or spaces"
  read pluy
  if [ "$pluy" = "y" ]; then
    sleep 3
    echo "Enter the different ingame name for your plugin"
    read pluname

  sleep 3
  echo "What is the description of your plugin for plugin.yml"
  read description
  sleep 3
  echo "Who are the authors of your plugin"
  sleep 3
  read authors
  sleep 3
  echo "Does your plugin have commands?(y/n)"
  read comand
  sleep 3
  if [ "$comand" = "y" ]; then
    echo "Since it is hard to compensate for every command your plugin might need, see https://stacknests.com/how-to-make-minecraft-plugins for info on how to add commands to plugin.yml"


    fi


sleep 3
echo "Creating plugin.yml"
echo "name: $pluname
      version: '1.0.0'
      main: com.$name.$name
      api-version: '1.21'
      description: $description
      authors: [$authors]" > plugin.yml
           sleep 3
           echo "Done creating plugin.yml"
           sleep 3
           echo "Congrats, the plugin is done! Install Maven and get an IDE like intellij, then begin writing some code!"

else
    sleep 3
    echo "Then the name of the plugin will be the ingame name"
    sleep 3
    echo "What is the description of your plugin for plugin.yml"
    read description
    sleep 3
    echo "Who are the authors of your plugin"
    sleep 3
    read authors
    sleep 3
    echo "Does your plugin have commands?(y/n)"
    read comand
    sleep 3
    if [ "$comand" = "y" ]; then
      echo "Since it is hard to compensate for every command your plugin might need, see https://stacknests.com/how-to-make-minecraft-plugins for info on how to add commands to plugin.yml"


      fi


  sleep 3
  echo "Creating plugin.yml"
  echo "name: $name
        version: '1.0.0'
        main: com.$name.$name
        api-version: '1.21'
        description: $description
        authors: [$authors]

     " > plugin.yml
     sleep 3
     echo "Done creating plugin.yml"
     sleep 3
     echo "Congrats, the plugin is done! Install Maven and get an IDE like intellij, then begin writing some code!"


  fi
fi

