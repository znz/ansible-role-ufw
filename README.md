# Ansible role for ufw

Setup `ufw` as output default policy is reject.

## Requirements

- Debian
- Ubuntu

## Role Variables

### default policy

- `ufw_default_input_policy`
- `ufw_default_output_policy`
- `ufw_default_forward_policy`

### rules

- `ufw_allow_in_both`: Allow incoming TCP and UDP
- `ufw_allow_in_tcp`: Allow incoming TCP
- `ufw_allow_in_udp`: Allow incoming UDP
- `ufw_limit_in_both`: Limit incoming TCP and UDP
- `ufw_limit_in_tcp`: Limit incoming TCP
- `ufw_limit_in_udp`: Limit incoming UDP
- `ufw_allow_out_both`: Allow outgoing TCP and UDP
- `ufw_allow_out_tcp`: Allow outgoing TCP
- `ufw_allow_out_udp`: Allow outgoing UDP

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
