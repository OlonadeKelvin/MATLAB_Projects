This project presents a simulation model of a self-stabilizing robot, implemented as an inverted pendulum on a cart using MATLAB Simulink. The system demonstrates the principles of dynamic stabilization and feedback control, where the robot maintains its upright position by actively adjusting its base movement in response to changes in the pendulum's angle.

The model consists of a physical representation of the inverted pendulum dynamics, a state-space or transfer function model, and a control system—typically a PID or LQR (Linear Quadratic Regulator) controller—designed to keep the pendulum balanced in the upright position.

Key components of the simulation include:

Dynamic Modeling: Representation of the pendulum-cart system using Newtonian mechanics or Lagrangian formulation.

Control Strategy: A real-time feedback controller that continuously computes the necessary force or torque to maintain stability.

System Response Visualization: Graphs and animations showing the pendulum’s angle, cart position, and control input over time.

Disturbance Handling: Optional simulation of external disturbances to test robustness of the control system.

This model serves as a foundational platform for understanding feedback systems, sensor fusion, and control theory in robotics and automation. It can be further extended to real-world applications such as two-wheeled balancing robots (like the Segway), robotic arms, or aerial drones.

