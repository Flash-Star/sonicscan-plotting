import numpy as np
import matplotlib.pyplot as plt
from TorchZND import TorchZND

pre1 = 'znd'

tznd = TorchZND()

tznd.setPrefix(pre1)
tznd.readZND()

z = tznd.getZND()

print z
