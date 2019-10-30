def move(man, sep):
    """
     将man列表向左平移sep个单位，最左边的元素向后添加
     相当于队列顺时针旋转
    """
    for i in range(sep):
      item = man.pop(0)
      man.append(item)
def play(man=41, sep=3, rest=2):
    """
    man:人数
    sep:杀死到第几任人
    rest:幸存者数量

    """
    print('总共%d个人，每报数到第%d个人自杀，最后剩余%d个人'%(man,sep,rest))
    man = [i for i in range(1,man+1)]
    print("玩家队列:",man)
    sep -= 1
    while len(man)>rest:
        move(man,sep)
        print('kill',man.pop(0))
    return man
servive = play()
print("最后逃生的人的编号是:",servive)
    

