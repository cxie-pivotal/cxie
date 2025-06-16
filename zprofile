export INSTALL_DIR="$HOME/gemfire_install"

PATH=$PATH:$HOME/scripts
PATH="$PATH:$INSTALL_DIR/jvsd-mac-aarch64-0.4.0/bin"

function gf91515(){
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home"
  export CLASSPATH=$CLASSPATH:$JAVA_HOME/bin:"$INSTALL_DIR/vmware-gemfire-9.15.15/lib/gfsh-dependencies.jar"
  export PATH="$PATH:$INSTALL_DIR/vmware-gemfire-9.15.15/bin"
  export PATH=$PATH:/usr/local/sbin
}

function gf1012_JDK11(){
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home"
  export GF_JAVA=$JAVA_HOME/bin/java
  export GEMFIRE_HOME=$INSTALL_DIR/vmware-gemfire-10.1.2
  export PATH="$PATH:$GEMFIRE_HOME/bin"
}  

function gf1012_JDK17(){
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/openlogic-openjdk-17.jdk/Contents/Home"
  export GF_JAVA=$JAVA_HOME/bin/java
  export GEMFIRE_HOME=$INSTALL_DIR/vmware-gemfire-10.1.2
  export PATH="$PATH:$GEMFIRE_HOME/bin"
}  

eval "$(/opt/homebrew/bin/brew shellenv)"
