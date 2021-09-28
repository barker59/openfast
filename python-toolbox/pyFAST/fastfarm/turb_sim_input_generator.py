import numpy as np
import random

# Fixed Parameters
chord_length = 3
grid_height = 139.7  # 1.1 * rotor diameter
grid_width = 305  # >= 2*(rotor radius + shaft length)
n_grid_z = 13
n_grid_y = 13

# Parameters to sweep
rand_seed = random.randint(-2147483648, 2147483647)
u_ref_options = np.arange(3, 26, 0.5).tolist()
ti_options = list(range(0, 31))
shear_options = np.arange(0.01, 0.07, 0.01).tolist()

# Read file

for u_ref in u_ref_options:
    for shear_vel in shear_options:
        with open('TDummy.inp', 'r') as file:
            filedata = file.read()

            # Replace target strings
            filedata = filedata.replace('rand_seed', str(rand_seed))
            filedata = filedata.replace('grid_height', str(grid_height))
            filedata = filedata.replace('grid_width', str(grid_width))
            filedata = filedata.replace('n_grid_z', str(n_grid_z))
            filedata = filedata.replace('n_grid_y', str(n_grid_y))
            filedata = filedata.replace('u_ref', str(u_ref))
            filedata = filedata.replace('shear_vel', str(shear_vel))

            # Write the file out again
            filename = 'input_files/Tsim_KP_uref{}_shear_vel{}.inp'.format(u_ref, shear_vel)
            with open(filename, 'w') as file:
                file.write(filedata)
