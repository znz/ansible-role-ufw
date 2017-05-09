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

### Delete rules

`ufw` explicitly need to delete rules when added rules are unnecessary.

- `ufw_delete_allow_in_both`: Delete allow incoming TCP and UDP
- `ufw_delete_allow_in_tcp`: Delete allow incoming TCP
- `ufw_delete_allow_in_udp`: Delete allow incoming UDP
- `ufw_delete_allow_out_both`: Delete allow outgoing TCP and UDP
- `ufw_delete_allow_out_tcp`: Delete allow outgoing TCP
- `ufw_delete_allow_out_udp`: Delete allow outgoing UDP

## Dependencies

None.

## Example Playbook

Example:

    - hosts: servers
      become: yes
      roles:
         - znz.ufw

Example with rejecting forward:

    - hosts: servers
      become: yes
      roles:
         - role: znz.ufw
           ufw_default_forward_policy: reject

Example with rules:

    - hosts: servers
      become: yes
      roles:
         - role: znz.ufw
           ufw_allow_in_tcp:
           - name: "HTTP"
             port: 80
           - name: "HTTPS"
             port: 443
           ufw_delete_allow_in_tcp:
           - name: "Telnet"
             port: 23

`name` is for memo because ansible ufw module does not support `comment`.
Tasks in this role use `port` only.

## License

MIT License
