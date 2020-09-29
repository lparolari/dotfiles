# Fix the problem of font scale factor with NVidia cards.
# See https://askubuntu.com/a/1269402
# Note: you need to run this script after startup.

# Set the scaling factor to an arbitrary value.
sleep 5s
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25

# Revert back the scaling factor to the default. 
# This restores the correct scaling factor.
sleep 0.5s
gsettings set org.gnome.desktop.interface text-scaling-factor 1.00

# I prefer to have larger font size.
sleep 0.5s
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
