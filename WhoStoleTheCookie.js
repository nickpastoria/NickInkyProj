var storyContent = ﻿{"inkVersion":20,"root":[["\n","\n","\n",{"->":"Intro"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"Intro":[["^here is Dad","\n",{"#":"IMAGE: Images/dad1.png"},"^that was Dad","\n",["ev",{"^->":"Intro.0.5.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^The time was 9 o'clock pm last night.",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Intro.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.5.s"},[{"#n":"$r2"}],"\n",[["ev",{"^->":"Intro.0.c-0.7.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Mom and I had baked a fresh batch of my favorite cookies.",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Intro.0.c-0.7.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",[["ev",{"^->":"Intro.0.c-0.7.c-0.7.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Snickerdoodle.",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Intro.0.c-0.7.c-0.7.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^I Love Snickerdoodle.","\n",["ev","str","^The Crime","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^I made sure to save an extra snickerdoodle cookie for after school today.","\n",[["ev",{"^->":"Intro.0.c-0.7.c-0.7.c-0.9.c-0.3.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^THE COOKIE IS GONE!",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Intro.0.c-0.7.c-0.7.c-0.9.c-0.3.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n",[["ev",{"^->":"Intro.0.c-0.7.c-0.7.c-0.9.c-0.3.c-0.7.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^The Suspects",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Intro.0.c-0.7.c-0.7.c-0.9.c-0.3.c-0.7.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^There were only three people around who saw me hide the cookie.","\n",{"->":"Suspects"},{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":1}],"Suspects":[["^These are the suspects:","\n","ev","str","^Dad","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Maddy","/str","/ev",{"*":".^.c-1","flg":20},{"*":".^.c-2","flg":24},{"c-0":["^ ",{"#":"IMAGE: Images/dad1.png"},"\n","^My prime suspect. He also loves snickerdoodle cookies.","\n",{"->":".^.^.^"},{"#f":5}],"c-1":["\n","^My dog. I told her where I hid the cookie just in-case I forgot where I put it. She is great at keeping secret.","\n",{"->":".^.^.^"},{"#f":5}],"c-2":["\n","^One of them must of have taken the cookie! But who?","\n",{"->":"InterrogationMenu"},{"#f":5}]}],{"#f":1}],"InterrogationMenu":[["ev",{"VAR?":"numInterrogated"},0,"==","/ev",[{"->":".^.b","c":true},{"b":["^ Who should I interrogate first? ",{"->":".^.^.^.7"},null]}],[{"->":".^.b"},{"b":["^ Who should I interrogate next?",{"->":".^.^.^.7"},null]}],"nop","\n",["ev",{"^->":"InterrogationMenu.0.9.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Dad",{"->":"$r","var":true},null]}],["ev",{"^->":"InterrogationMenu.0.10.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^Maddy",{"->":"$r","var":true},null]}],{"*":".^.c-2","flg":24},{"c-0":["ev",{"^->":"InterrogationMenu.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.9.s"},[{"#n":"$r2"}],"\n",{"->":"Dad"},{"#f":5}],"c-1":["ev",{"^->":"InterrogationMenu.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.10.s"},[{"#n":"$r2"}],"\n",{"->":"Maddy"},{"#f":5}],"c-2":["\n","^I've interrogated everyone! Time to name the culprit","\n",{"->":"Ending"},"end",{"#f":5}]}],{"#f":1}],"startInterrogation":["ev",{"VAR?":"numInterrogated"},1,"+",{"VAR=":"numInterrogated","re":true},"/ev",{"#f":1}],"Ending":["end",{"#f":1}],"Maddy":[["^WOOF!","\n",["ev",{"^->":"Maddy.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Maddy!",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Maddy.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^WOOF!","\n",[["ev",{"^->":"Maddy.0.c-0.9.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Ack! Get off! I know what you did Maddy, you can't distract me with kisses!",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Maddy.0.c-0.9.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^BORF","\n",[["ev",{"^->":"Maddy.0.c-0.9.c-0.9.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Off! Maddy down, get off!",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Maddy.0.c-0.9.c-0.9.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^Ah, this is useless...","\n","ev",{"VAR?":"numInterrogated"},1,"+",{"VAR=":"numInterrogated","re":true},"/ev",{"->":"InterrogationMenu"},"end",{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":1}],"Dad":[["^Hey there, chum! What's wrong?","\n",["ev",{"^->":"Dad.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Why don't you tell me, Dad...or should I say, Thief!",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Dad.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^Woah! What are you talking about kiddo?","\n",[["ev",{"^->":"Dad.0.c-0.9.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Don't try to lie to me, Dad! I know you stole the cookie that I saved for school!",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Dad.0.c-0.9.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^It wasn't me, I had my fill yesterday!","\n",[["ev",{"^->":"Dad.0.c-0.9.c-0.9.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Then who else could it be!",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"Dad.0.c-0.9.c-0.9.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","ev",{"VAR?":"numInterrogated"},0,"==","/ev",[{"->":".^.b","c":true},{"b":["\n","^I don't know...But why don't we try to figure this out together, chum?","\n",{"->":"workwithDad"},{"->":".^.^.^.14"},null]}],[{"->":".^.b"},{"b":["\n","^Have you asked Mom?","\n",{"->":"momPath"},{"->":".^.^.^.14"},null]}],"nop","\n",{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":1}],"workwithDad":[[["ev",{"^->":"workwithDad.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Alright...",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"workwithDad.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","ev",{"VAR?":"numInterrogated"},1,"+",{"VAR=":"numInterrogated","re":true},"/ev",{"->":"InterrogationMenu"},{"#f":5}]}],{"#f":1}],"momPath":["^Oh...","\n",{"->":"MOM"},"end",{"#f":1}],"MOM":[[{"#":"IMAGE: Images/mom1.png"},["^\"Hey there sweetheart, hi honey. What are you two up to?\"","\n","ev","str","^I need to talk to you.","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Just wanted to say hi.","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ \"Of course, darling. What's on your mind?\"","\n",["ev","str","^About cookies.","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^About something else.","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ \"Cookies, is it? Has something happened to your cookie stash?\"","\n",["ev","str","^Yes, my snickerdoodle is gone!","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^No, it's a different one.","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ \"Your special snickerdoodle? Oh no, that's terrible! That was your favorite, wasn't it?\"","\n",["ev","str","^Yes, and I've asked everyone else but they're clueless.","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^No, they all seem suspicious...","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ \"That sounds like quite a mystery. Remember the time we couldn't find your toy truck and it was under the bed the whole time? Maybe it's something like that.\"","\n",["ev","str","^Yes, I remember that...","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^No, I don't remember that...","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ \"Well, sometimes things aren't as they seem, darling. By the way, have you asked your Dad about the cookie?\"","\n",["ev","str","^I haven't asked him yet...","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Yes, he denied it.","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ \"Oh, honey, I think the culprit is right behind you...\"","\n",["ev","str","^GASP, Dad! you tricked me!","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ \"I had to do it, sport! It was right there!\"","\n",["ev","str","^I can't believe it! My own father!","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ \"Well, that's life in the cookie world, champ. But don't worry, we'll bake a new batch tomorrow, okay?\"","\n","end",{"#f":5}]}],{"#f":5}]}],{"#f":5}],"c-1":["^ \"Hmmm, I wonder... Oh, honey, I think the culprit is right behind you...\"","\n",["ev","str","^GASP, Dad! you tricked me!","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ \"I had to do it, sport! It was right there!\"","\n",["ev","str","^I can't believe it! My own father!","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ \"Well, that's life in the cookie world, champ. But don't worry, we'll bake a new batch tomorrow, okay?\"","\n","end",{"#f":5}]}],{"#f":5}]}],{"#f":5}]}],{"#f":5}],"c-1":["^ \"It was a while ago, but it taught us to look a little harder and not jump to conclusions. Have you asked your Dad about the cookie?\"","\n",{"->":"MOM"},{"#f":5}]}],{"#f":5}],"c-1":["^ \"Well, you know how it is with cookies. Everyone loves them. Maybe you need to ask a few more questions.\"","\n",{"->":"MOM"},{"#f":5}]}],{"#f":5}],"c-1":["^ \"Oh, another one? Well, cookies do have a way of disappearing around here. Maybe you need to start an investigation.\"","\n",{"->":"MOM"},{"#f":5}]}],{"#f":5}],"c-1":["^ \"Oh? What is it, darling?\"","\n",{"->":"MOM"},{"#f":5}]}],{"#f":5}],"c-1":["^ \"Well, hi there, darling. It's always nice to see you. Anything else on your mind?\"","\n",{"->":"MOM"},"done",{"#f":5}],"#f":5,"#n":"g-0"}],null],{"#f":1}],"global decl":["ev",0,{"VAR=":"numInterrogated"},"/ev","end",null],"#f":1}],"listDefs":{}};