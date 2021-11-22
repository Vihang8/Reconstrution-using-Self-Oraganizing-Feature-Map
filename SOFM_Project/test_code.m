net = selforgmap([16 16],20000,4,'gridtop','mandist');
net = configure(net,X_input);
plotsompos(net,X_input);

net.trainParam.epochs = 25000; 
net = train(net,X_input);
