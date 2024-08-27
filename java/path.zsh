# This command by itself will print the currently installed Java version
# 
# If you want additional information about ALL installed versions execute:
#    /usr/libexec/java_home -V

# To get something like below:
# Matching Java Virtual Machines (1):
#     22.0.2 (arm64) "Homebrew" - "OpenJDK 22.0.2" /opt/homebrew/Cellar/openjdk/22.0.2/libexec/openjdk.jdk/Contents/Home
# /opt/homebrew/Cellar/openjdk/22.0.2/libexec/openjdk.jdk/Contents/Home

# You can also update this to a specific version if necessary by executing:
#     /usr/libexec/java_home -v 22.0.2
export JAVA_HOME=$(/usr/libexec/java_home)
