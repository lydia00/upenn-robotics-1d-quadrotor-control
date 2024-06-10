# UPenn Robotics Programming Exercise 1
## 1D Quadrotor Simulator and PD Controller

The task was to build a PD Controller in MATLAB to control the height of the quadrotor simulator. Then, tune Kp (proportional gain) and Kv (derivative gain) to meet these requirements:

* Quadrotor should rise to 1m
* Reach 0.9m in under 1s
* Maximum overshoot is less than 5%

For this exercise, I programmed the controller using the PD controller equation. Then, using trial and error, I adjusted Kp and Kv until the requirements were met.
