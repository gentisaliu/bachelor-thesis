import matplotlib.pyplot as plt
import numpy as np

x = np.arange(-5,5.1,0.1)

kitgreen="#009682"
kitorange="#DF9B1B"
kitlila="#A3107C"
kitbrown="#A7822E"
lw=3

fig=plt.figure()
ax=fig.add_subplot(1,1,1)
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

ax.xaxis.set_tick_params(direction='inout')
ax.yaxis.set_tick_params(direction='inout')

plt.plot(x,np.tanh(x), label="tanh$(x)$", color=kitgreen,linewidth=lw)
plt.plot(x,1/(1+np.exp(-x)), label="$\sigma(x)$",color=kitorange,linewidth=lw)
plt.plot(x,np.maximum(np.zeros(x.shape),x),label = "$r(x)$",color=kitlila,linewidth=lw)

plt.ylim(-1,1)
plt.xlim(-3,3)

plt.xticks([-3,-2,-1,1,2,3])
plt.yticks([-1,-0.5,0.5,1])
plt.text(2.7,0.05,"$x$",fontsize=24)
#plt.("$a(x)$")

plt.arrow(3, 0, 0.000000001, 0, width=0, color="k", clip_on=False, head_width=0.03, head_length=0.09)
plt.arrow(0, 1, 0, 0, width=0, color="k", clip_on=False, head_width=0.09, head_length=0.03)

plt.legend(fontsize=24,loc=4,frameon=False)

plt.savefig("activations.png")
