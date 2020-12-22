##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=HelloWorld
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/jack/Documents/C++_in_Linux/HelloWorld
ProjectPath            :=/home/jack/Documents/C++_in_Linux/HelloWorld/HelloWorld
IntermediateDirectory  :=../build-$(ConfigurationName)/HelloWorld
OutDir                 :=../build-$(ConfigurationName)/HelloWorld
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Jack
Date                   :=22/12/20
CodeLitePath           :=/home/jack/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/HelloWorld/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/HelloWorld/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/HelloWorld"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/HelloWorld"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/HelloWorld/.d:
	@mkdir -p "../build-$(ConfigurationName)/HelloWorld"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/HelloWorld/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/HelloWorld/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jack/Documents/C++_in_Linux/HelloWorld/HelloWorld/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/HelloWorld/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/HelloWorld/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/HelloWorld/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/HelloWorld/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/HelloWorld/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(ObjectSuffix): Level4.cpp ../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/jack/Documents/C++_in_Linux/HelloWorld/HelloWorld/Level4.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Level4.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(DependSuffix): Level4.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(DependSuffix) -MM Level4.cpp

../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(PreprocessSuffix): Level4.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/HelloWorld/Level4.cpp$(PreprocessSuffix) Level4.cpp


-include ../build-$(ConfigurationName)/HelloWorld//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


