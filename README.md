# Ansible role for ufw

Setup `ufw` as output default policy is reject.

# Requirements

- Debian
- Ubuntu

# Role Variables

None.

## Dependencies

None.

## Example Playbook

Example:

    - hosts: servers
      become: yes
      roles:
         - znz.ufw

## License

MIT License
