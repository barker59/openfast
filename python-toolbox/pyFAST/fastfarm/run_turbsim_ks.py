import subprocess
import os
from os import walk
import shutil
import itertools

seednames = ['Seed_'+str(n) for n in range(0,2)]

filenames_list = []
(_, folders, _) = next(walk('./'))
foldernames = [fn for fn in folders if fn.startswith("Case")]
for folder in foldernames:
 for seedname in seednames:
  dirname = ''+folder+'/'+seedname+'/TurbSim/'
  (_, dirnames , filenames) = next(walk(dirname))
  filenames = [dirname+fi for fi in filenames if fi.endswith(".inp")]
  filenames_list.append(filenames)

filenames_list = list(itertools.chain(*filenames_list))

print(os.getcwd())
for input_file in filenames_list:
 subprocess.call(["../../../build/modules/turbsim/turbsim", input_file])


# Move results files to results dir
# (_, _, filenames) = next(walk('fastfarm/'))
# result_filenames = [fi for fi in filenames if fi.endswith((".wnd", ".sum"))]
# for file in result_filenames:
#  shutil.move("input_files/"+file, "./results/"+file)
