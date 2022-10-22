clear all

D = 10;
K1 = 1;
K2 = 1;

%%%%%%%%%%%%%%%%   HITTING PROBS    %%%%%%%%%%%%%%
PH1 = PrHit(D, K1);
figure()
plot((0:1:D),PH1)
title("� ��������� ����������� ��������� ��� ��� ������ 1")
xlabel("�������� d")
ylabel("���������� ���������")
PH2 = PrHit(D, K2);
figure()
plot((0:1:D),PH2)
title("� ��������� ����������� ��������� ��� ��� ������ 2")
xlabel("�������� d")
ylabel("���������� ���������")

%%%%%%%%%%%%%%%% TREE GAME SOLUTION %%%%%%%%%%%%%%
[Tr, O, U0] = DuelTree(D, PH1, PH2);
U = BackInd(1, U0, Tr, O);
S = FindSucc(Tr, U, D, O);
P = FindPath(D, S);
