# coding=utf-8

###### Options ######

options={}

options["<config>"]=ur'Default'
options["<os>"]=ur'playbook'
options["appdata"]=ur'C:/Users/dreambit/AppData/Roaming/MarmaladeTools'
options["build"]=ur'ARM GCC Release'
options["cmdline"]=['D:/Marmalade/6.1/s3e/makefile_builder/mkb.py', 'c:/Users/dreambit/Documents/memorygame/memorygame.mkb', '--default-buildenv=vc10', '--msvc-project', '--deploy-only']
options["deploymode"]=ur'Package'
options["device"]=ur'"{"localdir}/Deploy.py" device "{"tempdir}/DeployOpts.py" {hasmkb}'
options["dir"]=ur'c:/Users/dreambit/Documents/memorygame/build_memorygame_vc10'
options["folder"]=ur'"{"localdir}/Deploy.py" folder "{"tempdir}/DeployOpts.py" {hasmkb}'
options["hasmkb"]=ur'nomkb'
options["helpfile"]=ur'../docs/Deployment.chm'
options["helppage"]=ur'0'
options["lastdir"]=ur'c:/Users/dreambit/Documents/jamlegend/build_jamlegend_vc10'
options["mkb"]=ur'c:/Users/dreambit/Documents/memorygame/memorygame.mkb'
options["mkbdir"]=ur'c:/Users/dreambit/Documents/memorygame'
options["mkbfile"]=ur'memorygame.mkb'
options["outdir"]=ur'c:/Users/dreambit/Documents/memorygame/build_memorygame_vc10'
options["resdir"]=ur'd:/marmalade/6.1/tools/DeployTool/'
options["s3edir"]=ur'D:/Marmalade/6.1/s3e'
options["stage"]=ur''
options["target"]=ur'memorygame'
options["task"]=ur'Default'
options["tasktype"]=ur'Package'

###### Tasks ######

tasks=[]

### Task Default:playbook ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="playbook"
t["endDir"]="c:/Users/dreambit/Documents/memorygame/build_memorygame_vc10/deployments/default/playbook/release"
t["hostname"]=["169.254.1.1"]
t["password"]=["820304"]
