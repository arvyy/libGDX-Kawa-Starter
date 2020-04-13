# Kawa + libGDX starter project

This project include base structure and scripts for a game project made with Kawa (r7rs scheme on JVM) and libGDX library.
This includes: 

* automatic download of libGDX jar dependencies
* testing
* running
* building fat jar

Requirements:

* ant
* maven
* kawa.jar (see https://www.gnu.org/software/kawa/Getting-Kawa.html)

After cloning:

* change groupId/artifactId in pom.xml to a proper name for your project
* change kawa-jar property value to correctly point to kawa.jar on your machine in build.xml
* change dist-jar property value to a proper name for your project

You have following ant tasks at your disposal:

* run -- launches your game when developing locally
* compile -- builds a fat jar for your game
* test -- runs test. By default runs `all.scm`, which should include all other tests. You can run a single test by setting `test` property; e.g. `test -Dtest=game/logic`
