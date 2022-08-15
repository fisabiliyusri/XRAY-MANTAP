#!/bin/bash

systemctl daemon-reload
systemctl enable xray
systemctl restart xray
systemctl restart nginx
systemctl enable runn
systemctl restart runn
