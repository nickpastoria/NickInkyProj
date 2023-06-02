import os
from PIL import Image

# directory containing the images
input_dir = 'Deliverable\WhoStoleTheCookie\Images\Original Size'
# directory to save the downscaled images
output_dir = 'Deliverable\WhoStoleTheCookie\Images'

if not os.path.exists(output_dir):
    os.mkdir(output_dir)

# list all files in the directory
for filename in os.listdir(input_dir):
    # check if the file is an image
    if filename.endswith('.png'):
        img = Image.open(os.path.join(input_dir, filename))
        # downscale the image by 33%
        new_size = (int(img.width * 0.33), int(img.height * 0.33))
        img_resized = img.resize(new_size, Image.ANTIALIAS)
        # save the downscaled image
        img_resized.save(os.path.join(output_dir, filename))

print('All PNG images have been downscaled by 33%')
