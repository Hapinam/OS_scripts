# AIX filesystems and LVM

Useful inspection commands include `lsvg`, `lspv`, `lslv`, `lsfs`, `mount`, and `df`.

Use placeholders when applying maintenance commands:

```sh
lsvg -p <volume_group>
lspv -l <physical_volume>
lslv <logical_volume>
chfs -a size=+2G <filesystem>
mount <filesystem>
umount <filesystem>
```

Storage changes can be disruptive. Confirm capacity, dependencies, backups, and the maintenance procedure before changing a filesystem or volume group.

Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
