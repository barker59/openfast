import subprocess
import os
from os import walk
import shutil

(_, _, filenames) = next(walk('input_files/'))
filenames = [fi for fi in filenames if fi.endswith(".inp")]

for input_file in filenames:
 subprocess.call(["./turbsim", os.path.join('input_files/', input_file)])


# Move results files to results dir
(_, _, filenames) = next(walk('input_files/'))
result_filenames = [fi for fi in filenames if fi.endswith((".wnd", ".sum"))]
for file in result_filenames:
 shutil.move("input_files/"+file, "./results/"+file)
